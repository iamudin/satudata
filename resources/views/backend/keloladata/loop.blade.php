@php $tes=$tes.('.'.$key + 1); @endphp
<tr>
    <td style="text-align: left;">{{$i.$tes}} </td>
    <td>{{$item->nama}}</td>
    <td>{{$item->satuan??''}}</td>
    <td></td>
    <td style="text-align: center;">{{(count($item->data)>0)?'Ada':''}}</td>
    @foreach($tahun as $th)
        <td style="text-align: center;">
            @if($elemen->filterjumlah($item->id??'',$th))
                @if($th == date('Y')-1)
                    {!!'<input type="text" name="data" value="'.Help::desimal($elemen->filterjumlah($item->id??'',$th)->jumlah).'" data-id="'.$item->id.'" data-th="'.$th.'" style="width: 50px;"><i id="loading-spinner'.$item->id.$th.'" class="fa fa-spinner fa-spin" style="display: none;"></i>'!!}
                @else
                    {{Help::desimal($elemen->filterjumlah($item->id??'',$th)->jumlah)}}
                @endif
            @elseif((count($item->children) == 0) && $item->satuan != NULL)
                {!!'<input type="text" name="data" data-id="'.$item->id.'" data-th="'.$th.'" style="width: 50px;"><i id="loading-spinner'.$item->id.$th.'" class="fa fa-spinner fa-spin" style="display: none;"></i>'!!}
            @endif
        </td>
    @endforeach
    <td>{{$item->keterangan??''}}</td>
</tr>
@foreach($item->children as $key => $item)
    @include('backend.keloladata.loop')
@endforeach