import React from 'react'
import Human from "../../../../assets/images/patient_svgs/human.svg"
import {Search as ReactComponent} from "../../../../assets/images/patient_svgs/search.svg"
import {DocIcon as ReactComponent} from "../../../../assets/images/patient_svgs/doc.svg"
import {Calender as ReactComponent} from "../../../../assets/images/patient_svgs/calender.svg"
import {Notification as ReactComponent} from "../../../../assets/images/patient_svgs/notification.svg"
import {Contact as ReactComponent} from "../../../../assets/images/patient_svgs/contact.svg"
import { Medication as ReactComponent } from  "../../../../assets/images/patient_svgs/medication.svg"
import { Record as ReactComponent } from "../../../../assets/images/patient_svgs/record.svg"
import { Lab as ReactComponent } from "../../../../assets/images/patient_svgs/lab.svg"
import { Care as ReactComponent } from "../../../../assets/images/patient_svgs/care.svg"
import { Form as ReactComponent } from "../../../../assets/images/patient_svgs/form.svg"
import { Organ as ReactComponent } from "../../../.../assets/images/patient_svgs/sOrgan.svg"
import { Donor as ReactComponent } from "../../../../assets/images/patient_svgs/donor.svg"
import { Currency as ReactComponent } from "../../../../assets/images/patient_svgs/currency.svg"
import { History as ReactComponent } from "../../../../assets/images/patient_svgs/history.svg"
import { Thumb as ReactComponent } from "../../../../assets/images/patient_svgs/thumbs.svg"
import { Setting as ReactComponent } from "../../../../assets/images/patient_svgs/settings.svg"
import { Logout as ReactComponent } from "../../../../assets/images/patient_svgs/logout.svg"


const PatientHeader = ({profile_pic, first_name, id}) => {
  return (
    <div class="side-bar">
      <div class="user-info">
        <% if current_user.profile_pic.attached? %>
          <%= image_tag(current_user.profile_pic, alt: "profile icon", class: "sidebar-image") %>
        <% else %>
          <%= inline_svg_tag "patient_svgs/human.svg", alt: "search icon", class: "sidebar-image" %>
        <% end %>
        <div class="patient-profile-info">
          <h2 class="name-text sidebar text-one"> <%= current_user.first_name %> </h2>
          <h4 class="role-text sidebar text-two"> ID: <%= current_user.id %> </h4>
        </div>
      </div>
      <div class="sidebar-menu">
        <h3 class="menu-head first">DASHBOARD</h3>
        <ul class="menu-list">
          <li class="list-item active-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/search.svg", alt: "search icon", class: "sidebar-icons" %>
              Overview
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/doc.svg", alt: "search icon", class: "sidebar-icons" %>
              Doctor Search
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/calender.svg", alt: "search icon", class: "sidebar-icons" %>
              Appointment
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/notification.svg", alt: "search icon", class: "sidebar-icons" %>
              Messages
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/human.svg", alt: "search icon", class: "sidebar-icons" %>
              Profile
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/contact.svg", alt: "search icon", class: "sidebar-icons" %>
              Contact
            </a>
          </li>
        </ul>
        <h3 class="menu-head rest">MEDICAL</h3>
        <ul class="menu-list">
        <li class="list-item">
          <a href="#" class= "list-link">
            <%= inline_svg_tag "patient_svgs/medication.svg", alt: "search icon", class: "sidebar-icons" %>
            Medications
          </a>
        </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/record.svg", alt: "search icon", class: "sidebar-icons" %>
              Health Records
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/lab.svg", alt: "search icon", class: "sidebar-icons" %>
              LAB Results
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/care.svg", alt: "search icon", class: "sidebar-icons" %>
              Care Plans
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/form.svg", alt: "search icon", class: "sidebar-icons" %>
              Forms
            </a>
          </li>
        </ul>
        <h3 class="menu-head rest">DONATION</h3>
        <ul class="menu-list">
          <li class="list-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/sOrgan.svg", alt: "search icon", class: "sidebar-icons" %>
              Search Organ
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/donor.svg", alt: "search icon", class: "sidebar-icons" %>
              Donate Organ
            </a>
          </li>
        </ul>
        <h3 class="menu-head rest">FINANCE</h3>
        <ul class="menu-list">
          <li class="list-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/currency.svg", alt: "search icon", class: "sidebar-icons" %>
              Billing
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/history.svg", alt: "search icon", class: "sidebar-icons" %>
              History
            </a>
          </li>
        </ul>
        <ul class="menu-list last">
          <li class="list-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/thumbs.svg", alt: "search icon", class: "sidebar-icons" %>
              Support
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/settings.svg", alt: "search icon", class: "sidebar-icons" %>
              Settings
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <%= inline_svg_tag "patient_svgs/logout.svg", alt: "search icon", class: "sidebar-icons" %>
              Log Out
            </a>
          </li>
        </ul>
      </div>
    </div>
  )
}

export default PatientHeader
