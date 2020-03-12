<!DOCTYPE html>
<html lang="en">
<head>
		<meta charset="utf-8">
		<title>Data Design</title>
</head>
<body>
	<h1>Instagram</h1>
		<p>User posting a photo</p>
	<div>
	<h2>Profile</h2>
		<ul>
			<li>profileId (primary key)</li>
			<li>profileActivationToken</li>
			<li>profileGender</li>
			<li>profileDateOfBirth</li>
			<li>profileEmail</li>
			<li>profileUserName</li>
			<li>profileHash</li>
		</ul>
	</div>

	<div>
	<h2>Post</h2>
		<ul>
			<li>postId (primary key)</li>
			<li>postProfileId (foreign key)</li>
			<li>postPicture</li>
			<li>postCaption</li>
			<li>postLocation</li>
			<li>postDate</li>
		</ul>
	</div>

	<div>
	<h2>Like</h2>
		<ul>
			<li>likeProfileId(foreign key)</li>
			<li>likeDate</li>
			<li>likePostId</li>
		</ul>
	</div>
	<div>
		<h2>Relations</h2>
			<p>One <strong>Profile</strong> can do many <strong>Posts</strong> (1-m)</p>
			<p>Many <strong>Profiles</strong> can like many <strong>Post</strong> (m-n)</p>
			<p>One <strong>Profile</strong> can do many <strong>likes</strong> (1-m)</p>
			<p>One <strong>Post</strong> can have many <strong>likes</strong> (1-m)</p>
	</div>
	<img src="data-design.jpg" alt="data design conceptual model"/>

</body>
</html>