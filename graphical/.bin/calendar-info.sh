now="now"
if [ "$(khal at -a privat $now)" = "No events" ]; then 
  if [ "$(khal list $now today 23:59)" = "No events" ]; then
    echo "No upcoming events"
  else
    echo "next: $(khal list $now tomorrow 23:59 | head -n 2 | tail -n 1 | sed -E 's/\+[A-Z|a-z|Ä|ä|Ö|ö|Ü|ü|ß|0-9|\_|-]+//' | sed -E 's/\:\:.*//')" 
  fi
else 
  echo "now: $(khal at -a privat $now | tail -n 1 | sed -E 's/\+[A-Z|a-z|Ä|ä|Ö|ö|Ü|ü|ß|0-9|\_|-]+//' | sed -E 's/\:\:.*//')"
fi
