# google-cloud Gentoo overlay

Gentoo overlay for the [Google Cloud SDK](https://cloud.google.com/sdk).


## Usage

We recommend using eselect to manage the overlay.

    $ sudo eselect repository add google-cloud git https://github.com/adborden/google-cloud.git

Sync the repository.

    $ sudo emerge --sync google-cloud

Review and accept the EULA license.

    # Read the license
    $ less /var/db/repos/google-cloud/licenses/google-cloud-sdk
    # Add the license to /etc/portage/package.license
	app-admin/google-cloud-sdk google-cloud-sdk

Install the Google Cloud SDK.

    $ sudo emerge -q app-admin/google-cloud-sdk
