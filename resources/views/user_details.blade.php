@extends('layouts.app')

@section('content')
    <div class="container">
     @include('right_sidebar')
        <div class=" col-sm-8">
            
            <!-- User Details -->
            
                <div class="panel panel-default">
                    <div class="panel-heading">
                       <h3> User Information</h3>
                    </div>

                    <div class="panel-body">
                         <dl class="dl-horizontal">
                        <dt>Full Name</dt>
                        <dd>{{ $user_details[0]->name }}</dd>
                        </dl>
                        <dl class="dl-horizontal">
                        <dt>Email</dt>
                        <dd>{{ $user_details[0]->email }}</dd>
                        </dl>
                        <dl class="dl-horizontal">
                        <dt>Status</dt>
                        <dd>Active</dd>
                        </dl>
                    </div>
				</div>
        </div>
    </div>
@endsection
