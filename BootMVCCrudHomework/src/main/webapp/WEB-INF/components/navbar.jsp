
<nav id="myNavBar" class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
	<a class="navbar-brand" href="/">Shipyard</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="/">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="addShip.do">New Ship
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Search For </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="displayShipList.do?empire=AMARR">Amarr</a>
					<a class="dropdown-item" href="displayShipList.do?empire=CALDARI">Caldari</a>
					<a class="dropdown-item" href="displayShipList.do?empire=GALLENTE">Gallente</a>
					<a class="dropdown-item" href="displayShipList.do?empire=MINMATAR">Minmatar</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="displayShipList.do?type=FRIGATE">Frigate</a> <a
						class="dropdown-item" href="displayShipList.do?type=CRUISER">Cruiser</a> <a
						class="dropdown-item" href="displayShipList.do?type=BATTLECRUISER">Battlecruiser</a> <a
						class="dropdown-item" href="displayShipList.do?type=BATTLESHIP">Battleship</a>
				</div></li>
		</ul>
		<form class="form-inline my-2 my-lg-0" action="displayShip.do"
			method="GET">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search By ID" aria-label="Search" name="shipId">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
</nav>
