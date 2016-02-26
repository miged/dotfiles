for file in .bash_profile; do
	cp $file $HOME/file
	echo "copied $file"
done
