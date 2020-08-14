
<form action="./logout/" method="post">
  <div class="float-right logout">
      <button type="submit" class="btn btn-secondary">
        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-power" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
          <path fill-rule="evenodd" d="M5.578 4.437a5 5 0 1 0 4.922.044l.5-.866a6 6 0 1 1-5.908-.053l.486.875z"/>
          <path fill-rule="evenodd" d="M7.5 8V1h1v7h-1z"/>
        </svg>
        Logout</button>
  </div>
</form>

<div class="admin-header">
  Admin Panel
  <br>
  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-hammer" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
    <path d="M9.812 1.952a.5.5 0 0 1-.312.89c-1.671 0-2.852.596-3.616 1.185L4.857 5.073V6.21a.5.5 0 0 1-.146.354L3.425 7.853a.5.5 0 0 1-.708 0L.146 5.274a.5.5 0 0 1 0-.706l1.286-1.29a.5.5 0 0 1 .354-.146H2.84C4.505 1.228 6.216.862 7.557 1.04a5.009 5.009 0 0 1 2.077.782l.178.129z"/>
    <path fill-rule="evenodd" d="M6.012 3.5a.5.5 0 0 1 .359.165l9.146 8.646A.5.5 0 0 1 15.5 13L14 14.5a.5.5 0 0 1-.756-.056L4.598 5.297a.5.5 0 0 1 .048-.65l1-1a.5.5 0 0 1 .366-.147z"/>
  </svg>
</div>

%if status == "error":
<div class="alert alert-danger" role="alert alert-danger">
    {{message}}
</div>
%end
%if status == "ok" and message:
<div class="alert alert-success" role="alert">
    {{message}}
</div>
%end

<form action="." method="post">

  <label>Paste to delete:</label>
  <div class="input-group">
    <input name="paste" type="text" class="form-control" placeholder="Paste URL or ID here">
    <div class="input-group-append">
      <button type="submit" class="btn btn-danger">Delete</button>
    </div>
  </div>

</form>

% rebase('base', settings=settings, pastes_count=pastes_count)
