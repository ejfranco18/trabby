import flatpickr from "flatpickr"
import "flatpickr/dist/themes/dark.css"  // Note this is important!

flatpickr(".datepicker", {
  altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
  minDate: new Date()
}
    )
