/// Translation keys for easy_localization.
///
/// Keys only: call `.tr()` / `.plural()` at the usage site, e.g.
/// `AppStrings.authLoginButton.tr()`
/// `AppStrings.commonMinutes.plural(30)`
/// `AppStrings.bookingSuccessMessage.tr(namedArgs: {'doctor': name, 'date': d, 'time': t})`
///
/// Generated from assets/translations/en.json and ar.json.
/// Keep the three files in sync when adding keys.
abstract final class AppStrings {
  // --- app ---
  static const String appName = 'app.name';
  static const String appTagline = 'app.tagline';

  // --- common ---
  static const String commonOk = 'common.ok';
  static const String commonCancel = 'common.cancel';
  static const String commonConfirm = 'common.confirm';
  static const String commonSave = 'common.save';
  static const String commonSaveChanges = 'common.saveChanges';
  static const String commonDelete = 'common.delete';
  static const String commonEdit = 'common.edit';
  static const String commonAdd = 'common.add';
  static const String commonDone = 'common.done';
  static const String commonNext = 'common.next';
  static const String commonBack = 'common.back';
  static const String commonSkip = 'common.skip';
  static const String commonContinueLabel = 'common.continueLabel';
  static const String commonRetry = 'common.retry';
  static const String commonClose = 'common.close';
  static const String commonSearch = 'common.search';
  static const String commonFilter = 'common.filter';
  static const String commonFilters = 'common.filters';
  static const String commonApply = 'common.apply';
  static const String commonReset = 'common.reset';
  static const String commonClearAll = 'common.clearAll';
  static const String commonSeeAll = 'common.seeAll';
  static const String commonViewDetails = 'common.viewDetails';
  static const String commonYes = 'common.yes';
  static const String commonNo = 'common.no';
  static const String commonLoading = 'common.loading';
  static const String commonOptional = 'common.optional';
  static const String commonRequired = 'common.required';
  static const String commonToday = 'common.today';
  static const String commonTomorrow = 'common.tomorrow';
  static const String commonYesterday = 'common.yesterday';
  static const String commonAll = 'common.all';
  static const String commonNone = 'common.none';
  static const String commonMore = 'common.more';
  static const String commonShare = 'common.share';
  static const String commonRefresh = 'common.refresh';
  static const String commonSubmit = 'common.submit';
  static const String commonSelect = 'common.select';
  static const String commonSend = 'common.send';
  static const String commonOpen = 'common.open';
  static const String commonOpenSettings = 'common.openSettings';
  static const String commonAllow = 'common.allow';
  static const String commonNotNow = 'common.notNow';
  static const String commonLearnMore = 'common.learnMore';
  static const String commonFrom = 'common.from';
  static const String commonTo = 'common.to';
  static const String commonAt = 'common.at';
  static const String commonCurrency = 'common.currency';
  static const String commonAmount = 'common.amount';
  static const String commonSuccess = 'common.success';
  static const String commonFailure = 'common.failure';
  static const String commonChangesSaved = 'common.changesSaved';
  static const String commonUnsavedChangesTitle = 'common.unsavedChangesTitle';
  static const String commonUnsavedChangesMessage = 'common.unsavedChangesMessage';
  static const String commonDiscard = 'common.discard';
  static const String commonKeepEditing = 'common.keepEditing';
  static const String commonMinutes = 'common.minutes';
  static const String commonHours = 'common.hours';
  static const String commonDays = 'common.days';

  // --- weekdays ---
  static const String weekdaysSaturday = 'weekdays.saturday';
  static const String weekdaysSunday = 'weekdays.sunday';
  static const String weekdaysMonday = 'weekdays.monday';
  static const String weekdaysTuesday = 'weekdays.tuesday';
  static const String weekdaysWednesday = 'weekdays.wednesday';
  static const String weekdaysThursday = 'weekdays.thursday';
  static const String weekdaysFriday = 'weekdays.friday';
  static const String weekdaysSatShort = 'weekdays.satShort';
  static const String weekdaysSunShort = 'weekdays.sunShort';
  static const String weekdaysMonShort = 'weekdays.monShort';
  static const String weekdaysTueShort = 'weekdays.tueShort';
  static const String weekdaysWedShort = 'weekdays.wedShort';
  static const String weekdaysThuShort = 'weekdays.thuShort';
  static const String weekdaysFriShort = 'weekdays.friShort';

  // --- validation ---
  static const String validationRequired = 'validation.required';
  static const String validationFieldRequired = 'validation.fieldRequired';
  static const String validationInvalidEmail = 'validation.invalidEmail';
  static const String validationInvalidPhone = 'validation.invalidPhone';
  static const String validationInvalidName = 'validation.invalidName';
  static const String validationPasswordTooShort = 'validation.passwordTooShort';
  static const String validationPasswordWeak = 'validation.passwordWeak';
  static const String validationPasswordsDontMatch = 'validation.passwordsDontMatch';
  static const String validationNotesTooLong = 'validation.notesTooLong';
  static const String validationInvalidFee = 'validation.invalidFee';
  static const String validationInvalidNumber = 'validation.invalidNumber';
  static const String validationEndBeforeStart = 'validation.endBeforeStart';
  static const String validationBreakOutsideHours = 'validation.breakOutsideHours';
  static const String validationBreaksOverlap = 'validation.breaksOverlap';
  static const String validationTermsRequired = 'validation.termsRequired';

  // --- errors ---
  static const String errorsGeneric = 'errors.generic';
  static const String errorsNetwork = 'errors.network';
  static const String errorsTimeout = 'errors.timeout';
  static const String errorsServer = 'errors.server';
  static const String errorsUnauthorized = 'errors.unauthorized';
  static const String errorsForbidden = 'errors.forbidden';
  static const String errorsNotFound = 'errors.notFound';
  static const String errorsSessionExpired = 'errors.sessionExpired';
  static const String errorsUnknown = 'errors.unknown';
  static const String errorsLoadFailed = 'errors.loadFailed';
  static const String errorsSaveFailed = 'errors.saveFailed';
  static const String errorsConflict = 'errors.conflict';
  static const String errorsTooManyRequests = 'errors.tooManyRequests';

  // --- states ---
  static const String statesOfflineTitle = 'states.offlineTitle';
  static const String statesOfflineMessage = 'states.offlineMessage';
  static const String statesBackOnline = 'states.backOnline';
  static const String statesEmptyTitle = 'states.emptyTitle';
  static const String statesErrorTitle = 'states.errorTitle';
  static const String statesErrorMessage = 'states.errorMessage';
  static const String statesUnauthorizedTitle = 'states.unauthorizedTitle';
  static const String statesUnauthorizedMessage = 'states.unauthorizedMessage';
  static const String statesGoBack = 'states.goBack';
  static const String statesGoHome = 'states.goHome';
  static const String statesSessionExpiredTitle = 'states.sessionExpiredTitle';
  static const String statesAccountDisabledTitle = 'states.accountDisabledTitle';
  static const String statesAccountDisabledMessage = 'states.accountDisabledMessage';

  // --- nav ---
  static const String navHome = 'nav.home';
  static const String navDoctors = 'nav.doctors';
  static const String navAppointments = 'nav.appointments';
  static const String navNotifications = 'nav.notifications';
  static const String navProfile = 'nav.profile';
  static const String navDashboard = 'nav.dashboard';
  static const String navSchedule = 'nav.schedule';
  static const String navPatients = 'nav.patients';
  static const String navOverview = 'nav.overview';
  static const String navUsers = 'nav.users';
  static const String navSettings = 'nav.settings';

  // --- onboarding ---
  static const String onboardingSlide1Title = 'onboarding.slide1Title';
  static const String onboardingSlide1Description = 'onboarding.slide1Description';
  static const String onboardingSlide2Title = 'onboarding.slide2Title';
  static const String onboardingSlide2Description = 'onboarding.slide2Description';
  static const String onboardingSlide3Title = 'onboarding.slide3Title';
  static const String onboardingSlide3Description = 'onboarding.slide3Description';
  static const String onboardingGetStarted = 'onboarding.getStarted';

  // --- language ---
  static const String languageChooseTitle = 'language.chooseTitle';
  static const String languageChooseSubtitle = 'language.chooseSubtitle';
  static const String languageEnglish = 'language.english';
  static const String languageArabic = 'language.arabic';
  static const String languageChanged = 'language.changed';
  static const String languageSystem = 'language.system';

  // --- auth ---
  static const String authLoginTitle = 'auth.loginTitle';
  static const String authLoginSubtitle = 'auth.loginSubtitle';
  static const String authEmail = 'auth.email';
  static const String authEmailHint = 'auth.emailHint';
  static const String authPassword = 'auth.password';
  static const String authPasswordHint = 'auth.passwordHint';
  static const String authConfirmPassword = 'auth.confirmPassword';
  static const String authConfirmPasswordHint = 'auth.confirmPasswordHint';
  static const String authFullName = 'auth.fullName';
  static const String authFullNameHint = 'auth.fullNameHint';
  static const String authPhone = 'auth.phone';
  static const String authPhoneHint = 'auth.phoneHint';
  static const String authShowPassword = 'auth.showPassword';
  static const String authHidePassword = 'auth.hidePassword';
  static const String authForgotPassword = 'auth.forgotPassword';
  static const String authLoginButton = 'auth.loginButton';
  static const String authRegisterButton = 'auth.registerButton';
  static const String authNoAccount = 'auth.noAccount';
  static const String authHaveAccount = 'auth.haveAccount';
  static const String authRegisterTitle = 'auth.registerTitle';
  static const String authRegisterSubtitle = 'auth.registerSubtitle';
  static const String authSelectRole = 'auth.selectRole';
  static const String authRolePatient = 'auth.rolePatient';
  static const String authRoleDoctor = 'auth.roleDoctor';
  static const String authRoleAdmin = 'auth.roleAdmin';
  static const String authRolePatientDescription = 'auth.rolePatientDescription';
  static const String authRoleDoctorDescription = 'auth.roleDoctorDescription';
  static const String authDoctorApprovalNote = 'auth.doctorApprovalNote';
  static const String authAgreeToTerms = 'auth.agreeToTerms';
  static const String authTermsAndConditions = 'auth.termsAndConditions';
  static const String authPrivacyPolicy = 'auth.privacyPolicy';
  static const String authForgotTitle = 'auth.forgotTitle';
  static const String authForgotSubtitle = 'auth.forgotSubtitle';
  static const String authSendResetLink = 'auth.sendResetLink';
  static const String authResetLinkSent = 'auth.resetLinkSent';
  static const String authBackToLogin = 'auth.backToLogin';
  static const String authNewPassword = 'auth.newPassword';
  static const String authSetNewPassword = 'auth.setNewPassword';
  static const String authPasswordUpdated = 'auth.passwordUpdated';
  static const String authVerifyEmailTitle = 'auth.verifyEmailTitle';
  static const String authVerifyEmailMessage = 'auth.verifyEmailMessage';
  static const String authResendEmail = 'auth.resendEmail';
  static const String authEmailVerified = 'auth.emailVerified';
  static const String authLoginSuccess = 'auth.loginSuccess';
  static const String authRegisterSuccess = 'auth.registerSuccess';
  static const String authInvalidCredentials = 'auth.invalidCredentials';
  static const String authEmailAlreadyUsed = 'auth.emailAlreadyUsed';
  static const String authAccountPending = 'auth.accountPending';
  static const String authLogout = 'auth.logout';
  static const String authLogoutConfirmTitle = 'auth.logoutConfirmTitle';
  static const String authLogoutConfirmMessage = 'auth.logoutConfirmMessage';

  // --- permissions ---
  static const String permissionsNotificationsTitle = 'permissions.notificationsTitle';
  static const String permissionsNotificationsMessage = 'permissions.notificationsMessage';
  static const String permissionsNotificationsDeniedTitle = 'permissions.notificationsDeniedTitle';
  static const String permissionsNotificationsDeniedMessage = 'permissions.notificationsDeniedMessage';
  static const String permissionsCalendarTitle = 'permissions.calendarTitle';
  static const String permissionsCalendarMessage = 'permissions.calendarMessage';
  static const String permissionsCalendarDeniedMessage = 'permissions.calendarDeniedMessage';

  // --- home ---
  static const String homeGreetingMorning = 'home.greetingMorning';
  static const String homeGreetingAfternoon = 'home.greetingAfternoon';
  static const String homeGreetingEvening = 'home.greetingEvening';
  static const String homeHowAreYou = 'home.howAreYou';
  static const String homeSearchHint = 'home.searchHint';
  static const String homeSpecialties = 'home.specialties';
  static const String homeUpcomingAppointment = 'home.upcomingAppointment';
  static const String homeNoUpcomingTitle = 'home.noUpcomingTitle';
  static const String homeNoUpcomingMessage = 'home.noUpcomingMessage';
  static const String homeTopDoctors = 'home.topDoctors';
  static const String homeBookNow = 'home.bookNow';

  // --- doctors ---
  static const String doctorsTitle = 'doctors.title';
  static const String doctorsSearchHint = 'doctors.searchHint';
  static const String doctorsFilterTitle = 'doctors.filterTitle';
  static const String doctorsSpecialty = 'doctors.specialty';
  static const String doctorsAllSpecialties = 'doctors.allSpecialties';
  static const String doctorsRating = 'doctors.rating';
  static const String doctorsMinRating = 'doctors.minRating';
  static const String doctorsAvailability = 'doctors.availability';
  static const String doctorsAvailableToday = 'doctors.availableToday';
  static const String doctorsAvailableThisWeek = 'doctors.availableThisWeek';
  static const String doctorsAnyTime = 'doctors.anyTime';
  static const String doctorsSortBy = 'doctors.sortBy';
  static const String doctorsSortRating = 'doctors.sortRating';
  static const String doctorsSortExperience = 'doctors.sortExperience';
  static const String doctorsSortFee = 'doctors.sortFee';
  static const String doctorsNoResultsTitle = 'doctors.noResultsTitle';
  static const String doctorsNoResultsMessage = 'doctors.noResultsMessage';
  static const String doctorsFee = 'doctors.fee';
  static const String doctorsNextAvailable = 'doctors.nextAvailable';
  static const String doctorsDoctorPrefix = 'doctors.doctorPrefix';
  static const String doctorsYearsExperience = 'doctors.yearsExperience';
  static const String doctorsReviewsCount = 'doctors.reviewsCount';

  // --- doctorProfile ---
  static const String doctorProfileTitle = 'doctorProfile.title';
  static const String doctorProfileAbout = 'doctorProfile.about';
  static const String doctorProfileExperience = 'doctorProfile.experience';
  static const String doctorProfileRating = 'doctorProfile.rating';
  static const String doctorProfileReviews = 'doctorProfile.reviews';
  static const String doctorProfilePatients = 'doctorProfile.patients';
  static const String doctorProfileClinic = 'doctorProfile.clinic';
  static const String doctorProfileClinicAddress = 'doctorProfile.clinicAddress';
  static const String doctorProfileWorkingHours = 'doctorProfile.workingHours';
  static const String doctorProfileConsultationFee = 'doctorProfile.consultationFee';
  static const String doctorProfileBookAppointment = 'doctorProfile.bookAppointment';
  static const String doctorProfileGetDirections = 'doctorProfile.getDirections';
  static const String doctorProfileAvailableSlotsToday = 'doctorProfile.availableSlotsToday';
  static const String doctorProfileNoSlotsToday = 'doctorProfile.noSlotsToday';
  static const String doctorProfileDoctorUnavailable = 'doctorProfile.doctorUnavailable';

  // --- booking ---
  static const String bookingSelectDateTime = 'booking.selectDateTime';
  static const String bookingSelectDate = 'booking.selectDate';
  static const String bookingSelectTime = 'booking.selectTime';
  static const String bookingMorning = 'booking.morning';
  static const String bookingAfternoon = 'booking.afternoon';
  static const String bookingEvening = 'booking.evening';
  static const String bookingNoSlotsTitle = 'booking.noSlotsTitle';
  static const String bookingNoSlotsMessage = 'booking.noSlotsMessage';
  static const String bookingTryAnotherDate = 'booking.tryAnotherDate';
  static const String bookingLegendAvailable = 'booking.legendAvailable';
  static const String bookingLegendSelected = 'booking.legendSelected';
  static const String bookingLegendBooked = 'booking.legendBooked';
  static const String bookingSlotUnavailable = 'booking.slotUnavailable';
  static const String bookingSelectSlotFirst = 'booking.selectSlotFirst';
  static const String bookingSummaryTitle = 'booking.summaryTitle';
  static const String bookingDoctor = 'booking.doctor';
  static const String bookingSpecialty = 'booking.specialty';
  static const String bookingDate = 'booking.date';
  static const String bookingTime = 'booking.time';
  static const String bookingDuration = 'booking.duration';
  static const String bookingClinic = 'booking.clinic';
  static const String bookingFee = 'booking.fee';
  static const String bookingPayAtClinic = 'booking.payAtClinic';
  static const String bookingNotes = 'booking.notes';
  static const String bookingNotesHint = 'booking.notesHint';
  static const String bookingConfirmBooking = 'booking.confirmBooking';
  static const String bookingBooking = 'booking.booking';
  static const String bookingSuccessTitle = 'booking.successTitle';
  static const String bookingSuccessMessage = 'booking.successMessage';
  static const String bookingPendingMessage = 'booking.pendingMessage';
  static const String bookingAddToCalendar = 'booking.addToCalendar';
  static const String bookingViewAppointment = 'booking.viewAppointment';
  static const String bookingBackToHome = 'booking.backToHome';
  static const String bookingSlotTakenTitle = 'booking.slotTakenTitle';
  static const String bookingSlotTakenMessage = 'booking.slotTakenMessage';
  static const String bookingChooseAnotherTime = 'booking.chooseAnotherTime';
  static const String bookingOverlapTitle = 'booking.overlapTitle';
  static const String bookingOverlapMessage = 'booking.overlapMessage';
  static const String bookingPastSlot = 'booking.pastSlot';
  static const String bookingOutsideBookingWindow = 'booking.outsideBookingWindow';
  static const String bookingFailed = 'booking.failed';

  // --- appointments ---
  static const String appointmentsTitle = 'appointments.title';
  static const String appointmentsUpcoming = 'appointments.upcoming';
  static const String appointmentsPast = 'appointments.past';
  static const String appointmentsCancelled = 'appointments.cancelled';
  static const String appointmentsNoUpcomingTitle = 'appointments.noUpcomingTitle';
  static const String appointmentsNoUpcomingMessage = 'appointments.noUpcomingMessage';
  static const String appointmentsNoPastTitle = 'appointments.noPastTitle';
  static const String appointmentsNoPastMessage = 'appointments.noPastMessage';
  static const String appointmentsNoCancelledTitle = 'appointments.noCancelledTitle';
  static const String appointmentsNoCancelledMessage = 'appointments.noCancelledMessage';
  static const String appointmentsDetailsTitle = 'appointments.detailsTitle';
  static const String appointmentsStatus = 'appointments.status';
  static const String appointmentsBookingId = 'appointments.bookingId';
  static const String appointmentsPatient = 'appointments.patient';
  static const String appointmentsDoctor = 'appointments.doctor';
  static const String appointmentsDateTime = 'appointments.dateTime';
  static const String appointmentsLocation = 'appointments.location';
  static const String appointmentsNotes = 'appointments.notes';
  static const String appointmentsNoNotes = 'appointments.noNotes';
  static const String appointmentsReschedule = 'appointments.reschedule';
  static const String appointmentsCancel = 'appointments.cancel';
  static const String appointmentsAddToCalendar = 'appointments.addToCalendar';
  static const String appointmentsBookAgain = 'appointments.bookAgain';
  static const String appointmentsCallClinic = 'appointments.callClinic';
  static const String appointmentsCancelConfirmTitle = 'appointments.cancelConfirmTitle';
  static const String appointmentsCancelConfirmMessage = 'appointments.cancelConfirmMessage';
  static const String appointmentsCancelReason = 'appointments.cancelReason';
  static const String appointmentsCancelReasonHint = 'appointments.cancelReasonHint';
  static const String appointmentsKeepAppointment = 'appointments.keepAppointment';
  static const String appointmentsConfirmCancel = 'appointments.confirmCancel';
  static const String appointmentsCancelWindowTitle = 'appointments.cancelWindowTitle';
  static const String appointmentsCancelWindowWarning = 'appointments.cancelWindowWarning';
  static const String appointmentsCancelNotAllowed = 'appointments.cancelNotAllowed';
  static const String appointmentsCancelSuccess = 'appointments.cancelSuccess';
  static const String appointmentsCancelFailed = 'appointments.cancelFailed';
  static const String appointmentsTimeUntil = 'appointments.timeUntil';
  static const String appointmentsCount = 'appointments.count';

  // --- status ---
  static const String statusPending = 'status.pending';
  static const String statusConfirmed = 'status.confirmed';
  static const String statusCompleted = 'status.completed';
  static const String statusCancelled = 'status.cancelled';
  static const String statusRescheduled = 'status.rescheduled';
  static const String statusNoShow = 'status.noShow';

  // --- reschedule ---
  static const String rescheduleTitle = 'reschedule.title';
  static const String rescheduleCurrentSlot = 'reschedule.currentSlot';
  static const String rescheduleNewSlot = 'reschedule.newSlot';
  static const String rescheduleSelectNewSlot = 'reschedule.selectNewSlot';
  static const String rescheduleSameSlot = 'reschedule.sameSlot';
  static const String rescheduleReason = 'reschedule.reason';
  static const String rescheduleReasonHint = 'reschedule.reasonHint';
  static const String rescheduleConfirm = 'reschedule.confirm';
  static const String rescheduleSuccess = 'reschedule.success';
  static const String rescheduleFailed = 'reschedule.failed';
  static const String rescheduleConflictTitle = 'reschedule.conflictTitle';
  static const String rescheduleConflictDoctor = 'reschedule.conflictDoctor';
  static const String rescheduleConflictPatient = 'reschedule.conflictPatient';
  static const String rescheduleNotAllowed = 'reschedule.notAllowed';
  static const String rescheduleWindowWarning = 'reschedule.windowWarning';
  static const String rescheduleProposedByDoctor = 'reschedule.proposedByDoctor';
  static const String rescheduleAcceptProposal = 'reschedule.acceptProposal';
  static const String rescheduleDeclineProposal = 'reschedule.declineProposal';

  // --- history ---
  static const String historyTitle = 'history.title';
  static const String historyFilterByStatus = 'history.filterByStatus';
  static const String historyFilterByDate = 'history.filterByDate';
  static const String historyDateRange = 'history.dateRange';
  static const String historyNoHistoryTitle = 'history.noHistoryTitle';
  static const String historyNoHistoryMessage = 'history.noHistoryMessage';
  static const String historyClearFilters = 'history.clearFilters';
  static const String historyTotalVisits = 'history.totalVisits';

  // --- calendar ---
  static const String calendarAddSuccess = 'calendar.addSuccess';
  static const String calendarAddFailed = 'calendar.addFailed';
  static const String calendarAlreadyAdded = 'calendar.alreadyAdded';
  static const String calendarPermissionRequired = 'calendar.permissionRequired';
  static const String calendarEventTitle = 'calendar.eventTitle';
  static const String calendarEventDescription = 'calendar.eventDescription';
  static const String calendarChooseCalendar = 'calendar.chooseCalendar';
  static const String calendarSyncEnabled = 'calendar.syncEnabled';
  static const String calendarSyncDisabled = 'calendar.syncDisabled';
  static const String calendarEventUpdated = 'calendar.eventUpdated';
  static const String calendarEventRemoved = 'calendar.eventRemoved';

  // --- notifications ---
  static const String notificationsTitle = 'notifications.title';
  static const String notificationsMarkAllRead = 'notifications.markAllRead';
  static const String notificationsNoNotificationsTitle = 'notifications.noNotificationsTitle';
  static const String notificationsNoNotificationsMessage = 'notifications.noNotificationsMessage';
  static const String notificationsToday = 'notifications.today';
  static const String notificationsEarlier = 'notifications.earlier';
  static const String notificationsUnread = 'notifications.unread';
  static const String notificationsReminderTitle = 'notifications.reminderTitle';
  static const String notificationsReminderBody = 'notifications.reminderBody';
  static const String notificationsConfirmedTitle = 'notifications.confirmedTitle';
  static const String notificationsConfirmedBody = 'notifications.confirmedBody';
  static const String notificationsRescheduledTitle = 'notifications.rescheduledTitle';
  static const String notificationsRescheduledBody = 'notifications.rescheduledBody';
  static const String notificationsCancelledTitle = 'notifications.cancelledTitle';
  static const String notificationsCancelledBody = 'notifications.cancelledBody';
  static const String notificationsDeclinedTitle = 'notifications.declinedTitle';
  static const String notificationsDeclinedBody = 'notifications.declinedBody';
  static const String notificationsProposedTimeTitle = 'notifications.proposedTimeTitle';
  static const String notificationsProposedTimeBody = 'notifications.proposedTimeBody';
  static const String notificationsNewRequestTitle = 'notifications.newRequestTitle';
  static const String notificationsNewRequestBody = 'notifications.newRequestBody';
  static const String notificationsPatientCancelledTitle = 'notifications.patientCancelledTitle';
  static const String notificationsPatientCancelledBody = 'notifications.patientCancelledBody';
  static const String notificationsPatientRescheduledTitle = 'notifications.patientRescheduledTitle';
  static const String notificationsPatientRescheduledBody = 'notifications.patientRescheduledBody';
  static const String notificationsAdminCancelledBody = 'notifications.adminCancelledBody';
  static const String notificationsReassignedBody = 'notifications.reassignedBody';
  static const String notificationsIn24Hours = 'notifications.in24Hours';
  static const String notificationsIn1Hour = 'notifications.in1Hour';
  static const String notificationsChannelName = 'notifications.channelName';
  static const String notificationsChannelDescription = 'notifications.channelDescription';

  // --- profile ---
  static const String profileTitle = 'profile.title';
  static const String profileEditProfile = 'profile.editProfile';
  static const String profilePersonalInfo = 'profile.personalInfo';
  static const String profileChangePhoto = 'profile.changePhoto';
  static const String profileTakePhoto = 'profile.takePhoto';
  static const String profileChooseFromGallery = 'profile.chooseFromGallery';
  static const String profileRemovePhoto = 'profile.removePhoto';
  static const String profileDateOfBirth = 'profile.dateOfBirth';
  static const String profileGender = 'profile.gender';
  static const String profileMale = 'profile.male';
  static const String profileFemale = 'profile.female';
  static const String profileSettings = 'profile.settings';
  static const String profileNotificationSettings = 'profile.notificationSettings';
  static const String profilePushNotifications = 'profile.pushNotifications';
  static const String profileAppointmentReminders = 'profile.appointmentReminders';
  static const String profileRemindMe = 'profile.remindMe';
  static const String profileRemind24h = 'profile.remind24h';
  static const String profileRemind1h = 'profile.remind1h';
  static const String profileCalendarSync = 'profile.calendarSync';
  static const String profileCalendarSyncDescription = 'profile.calendarSyncDescription';
  static const String profileLanguage = 'profile.language';
  static const String profileTheme = 'profile.theme';
  static const String profileThemeLight = 'profile.themeLight';
  static const String profileThemeDark = 'profile.themeDark';
  static const String profileThemeSystem = 'profile.themeSystem';
  static const String profileSecurity = 'profile.security';
  static const String profileChangePassword = 'profile.changePassword';
  static const String profileCurrentPassword = 'profile.currentPassword';
  static const String profileHelpSupport = 'profile.helpSupport';
  static const String profileAbout = 'profile.about';
  static const String profileVersion = 'profile.version';
  static const String profileDeleteAccount = 'profile.deleteAccount';
  static const String profileDeleteAccountTitle = 'profile.deleteAccountTitle';
  static const String profileDeleteAccountMessage = 'profile.deleteAccountMessage';
  static const String profileUpdated = 'profile.updated';
  static const String profileUpdateFailed = 'profile.updateFailed';

  // --- doctorDashboard ---
  static const String doctorDashboardTitle = 'doctorDashboard.title';
  static const String doctorDashboardWelcome = 'doctorDashboard.welcome';
  static const String doctorDashboardTodaysAppointments = 'doctorDashboard.todaysAppointments';
  static const String doctorDashboardNoAppointmentsTitle = 'doctorDashboard.noAppointmentsTitle';
  static const String doctorDashboardNoAppointmentsMessage = 'doctorDashboard.noAppointmentsMessage';
  static const String doctorDashboardStatToday = 'doctorDashboard.statToday';
  static const String doctorDashboardStatPending = 'doctorDashboard.statPending';
  static const String doctorDashboardStatCompletedWeek = 'doctorDashboard.statCompletedWeek';
  static const String doctorDashboardStatTotalPatients = 'doctorDashboard.statTotalPatients';
  static const String doctorDashboardNextPatient = 'doctorDashboard.nextPatient';
  static const String doctorDashboardMarkCompleted = 'doctorDashboard.markCompleted';
  static const String doctorDashboardMarkNoShow = 'doctorDashboard.markNoShow';
  static const String doctorDashboardConfirmAppointment = 'doctorDashboard.confirmAppointment';
  static const String doctorDashboardViewSchedule = 'doctorDashboard.viewSchedule';
  static const String doctorDashboardStatusUpdated = 'doctorDashboard.statusUpdated';

  // --- schedule ---
  static const String scheduleTitle = 'schedule.title';
  static const String scheduleDay = 'schedule.day';
  static const String scheduleWeek = 'schedule.week';
  static const String scheduleMonth = 'schedule.month';
  static const String scheduleGoToToday = 'schedule.goToToday';
  static const String scheduleNoAppointmentsDay = 'schedule.noAppointmentsDay';
  static const String scheduleDayOff = 'schedule.dayOff';
  static const String scheduleBlockedTime = 'schedule.blockedTime';
  static const String scheduleFreeSlot = 'schedule.freeSlot';
  static const String scheduleLegend = 'schedule.legend';

  // --- availability ---
  static const String availabilityTitle = 'availability.title';
  static const String availabilityWeeklyHours = 'availability.weeklyHours';
  static const String availabilityWorkingDay = 'availability.workingDay';
  static const String availabilityClosed = 'availability.closed';
  static const String availabilityStartTime = 'availability.startTime';
  static const String availabilityEndTime = 'availability.endTime';
  static const String availabilityBreaks = 'availability.breaks';
  static const String availabilityAddBreak = 'availability.addBreak';
  static const String availabilityBreakStart = 'availability.breakStart';
  static const String availabilityBreakEnd = 'availability.breakEnd';
  static const String availabilityNoBreaks = 'availability.noBreaks';
  static const String availabilityDaysOff = 'availability.daysOff';
  static const String availabilityAddDayOff = 'availability.addDayOff';
  static const String availabilityDayOffReason = 'availability.dayOffReason';
  static const String availabilityNoDaysOff = 'availability.noDaysOff';
  static const String availabilitySlotDuration = 'availability.slotDuration';
  static const String availabilityCopyToAllDays = 'availability.copyToAllDays';
  static const String availabilitySave = 'availability.save';
  static const String availabilitySaved = 'availability.saved';
  static const String availabilitySaveFailed = 'availability.saveFailed';
  static const String availabilityConflictsWithAppointments = 'availability.conflictsWithAppointments';
  static const String availabilityViewConflicts = 'availability.viewConflicts';

  // --- requests ---
  static const String requestsTitle = 'requests.title';
  static const String requestsAccept = 'requests.accept';
  static const String requestsDecline = 'requests.decline';
  static const String requestsProposeNewTime = 'requests.proposeNewTime';
  static const String requestsRequestedFor = 'requests.requestedFor';
  static const String requestsNoRequestsTitle = 'requests.noRequestsTitle';
  static const String requestsNoRequestsMessage = 'requests.noRequestsMessage';
  static const String requestsAccepted = 'requests.accepted';
  static const String requestsDeclined = 'requests.declined';
  static const String requestsDeclineReason = 'requests.declineReason';
  static const String requestsDeclineReasonHint = 'requests.declineReasonHint';
  static const String requestsSelectProposedTime = 'requests.selectProposedTime';
  static const String requestsSendProposal = 'requests.sendProposal';
  static const String requestsProposalSent = 'requests.proposalSent';

  // --- patients ---
  static const String patientsTitle = 'patients.title';
  static const String patientsSearchHint = 'patients.searchHint';
  static const String patientsNoPatientsTitle = 'patients.noPatientsTitle';
  static const String patientsNoPatientsMessage = 'patients.noPatientsMessage';
  static const String patientsDetails = 'patients.details';
  static const String patientsLastVisit = 'patients.lastVisit';
  static const String patientsTotalVisits = 'patients.totalVisits';
  static const String patientsVisitHistory = 'patients.visitHistory';
  static const String patientsContact = 'patients.contact';
  static const String patientsAge = 'patients.age';
  static const String patientsNoHistory = 'patients.noHistory';
  static const String patientsCount = 'patients.count';

  // --- adminOverview ---
  static const String adminOverviewTitle = 'adminOverview.title';
  static const String adminOverviewTotalAppointments = 'adminOverview.totalAppointments';
  static const String adminOverviewActiveDoctors = 'adminOverview.activeDoctors';
  static const String adminOverviewTotalPatients = 'adminOverview.totalPatients';
  static const String adminOverviewNewPatients = 'adminOverview.newPatients';
  static const String adminOverviewPendingAppointments = 'adminOverview.pendingAppointments';
  static const String adminOverviewCancellationRate = 'adminOverview.cancellationRate';
  static const String adminOverviewAppointmentsPerWeek = 'adminOverview.appointmentsPerWeek';
  static const String adminOverviewStatusBreakdown = 'adminOverview.statusBreakdown';
  static const String adminOverviewTopSpecialties = 'adminOverview.topSpecialties';
  static const String adminOverviewThisWeek = 'adminOverview.thisWeek';
  static const String adminOverviewThisMonth = 'adminOverview.thisMonth';
  static const String adminOverviewLast30Days = 'adminOverview.last30Days';
  static const String adminOverviewNoData = 'adminOverview.noData';

  // --- adminDoctors ---
  static const String adminDoctorsTitle = 'adminDoctors.title';
  static const String adminDoctorsSearchHint = 'adminDoctors.searchHint';
  static const String adminDoctorsAddDoctor = 'adminDoctors.addDoctor';
  static const String adminDoctorsEditDoctor = 'adminDoctors.editDoctor';
  static const String adminDoctorsPhoto = 'adminDoctors.photo';
  static const String adminDoctorsName = 'adminDoctors.name';
  static const String adminDoctorsEmail = 'adminDoctors.email';
  static const String adminDoctorsSpecialty = 'adminDoctors.specialty';
  static const String adminDoctorsSelectSpecialty = 'adminDoctors.selectSpecialty';
  static const String adminDoctorsBio = 'adminDoctors.bio';
  static const String adminDoctorsBioHint = 'adminDoctors.bioHint';
  static const String adminDoctorsFee = 'adminDoctors.fee';
  static const String adminDoctorsYearsOfExperience = 'adminDoctors.yearsOfExperience';
  static const String adminDoctorsClinicName = 'adminDoctors.clinicName';
  static const String adminDoctorsClinicAddress = 'adminDoctors.clinicAddress';
  static const String adminDoctorsWorkingDays = 'adminDoctors.workingDays';
  static const String adminDoctorsActive = 'adminDoctors.active';
  static const String adminDoctorsInactive = 'adminDoctors.inactive';
  static const String adminDoctorsActivate = 'adminDoctors.activate';
  static const String adminDoctorsDeactivate = 'adminDoctors.deactivate';
  static const String adminDoctorsDeactivateTitle = 'adminDoctors.deactivateTitle';
  static const String adminDoctorsDeactivateMessage = 'adminDoctors.deactivateMessage';
  static const String adminDoctorsAdded = 'adminDoctors.added';
  static const String adminDoctorsUpdated = 'adminDoctors.updated';
  static const String adminDoctorsNoDoctorsTitle = 'adminDoctors.noDoctorsTitle';
  static const String adminDoctorsNoDoctorsMessage = 'adminDoctors.noDoctorsMessage';

  // --- adminAppointments ---
  static const String adminAppointmentsTitle = 'adminAppointments.title';
  static const String adminAppointmentsSearchHint = 'adminAppointments.searchHint';
  static const String adminAppointmentsFilterByDoctor = 'adminAppointments.filterByDoctor';
  static const String adminAppointmentsFilterByStatus = 'adminAppointments.filterByStatus';
  static const String adminAppointmentsFilterByDate = 'adminAppointments.filterByDate';
  static const String adminAppointmentsNoAppointmentsTitle = 'adminAppointments.noAppointmentsTitle';
  static const String adminAppointmentsNoAppointmentsMessage = 'adminAppointments.noAppointmentsMessage';
  static const String adminAppointmentsForceCancel = 'adminAppointments.forceCancel';
  static const String adminAppointmentsForceCancelTitle = 'adminAppointments.forceCancelTitle';
  static const String adminAppointmentsForceCancelMessage = 'adminAppointments.forceCancelMessage';
  static const String adminAppointmentsForceCancelReasonHint = 'adminAppointments.forceCancelReasonHint';
  static const String adminAppointmentsForceCancelSuccess = 'adminAppointments.forceCancelSuccess';
  static const String adminAppointmentsReassign = 'adminAppointments.reassign';
  static const String adminAppointmentsReassignTitle = 'adminAppointments.reassignTitle';
  static const String adminAppointmentsReassignMessage = 'adminAppointments.reassignMessage';
  static const String adminAppointmentsSelectDoctor = 'adminAppointments.selectDoctor';
  static const String adminAppointmentsNoDoctorAvailable = 'adminAppointments.noDoctorAvailable';
  static const String adminAppointmentsReassignSuccess = 'adminAppointments.reassignSuccess';
  static const String adminAppointmentsPatientNotified = 'adminAppointments.patientNotified';

  // --- adminUsers ---
  static const String adminUsersTitle = 'adminUsers.title';
  static const String adminUsersSearchHint = 'adminUsers.searchHint';
  static const String adminUsersAllRoles = 'adminUsers.allRoles';
  static const String adminUsersRole = 'adminUsers.role';
  static const String adminUsersChangeRole = 'adminUsers.changeRole';
  static const String adminUsersChangeRoleConfirm = 'adminUsers.changeRoleConfirm';
  static const String adminUsersRoleChanged = 'adminUsers.roleChanged';
  static const String adminUsersDeactivateUser = 'adminUsers.deactivateUser';
  static const String adminUsersActivateUser = 'adminUsers.activateUser';
  static const String adminUsersUserDeactivated = 'adminUsers.userDeactivated';
  static const String adminUsersUserActivated = 'adminUsers.userActivated';
  static const String adminUsersJoinedOn = 'adminUsers.joinedOn';
  static const String adminUsersNoUsersTitle = 'adminUsers.noUsersTitle';
  static const String adminUsersPendingApproval = 'adminUsers.pendingApproval';
  static const String adminUsersApprove = 'adminUsers.approve';
  static const String adminUsersReject = 'adminUsers.reject';
  static const String adminUsersCannotChangeOwnRole = 'adminUsers.cannotChangeOwnRole';

  // --- adminSpecialties ---
  static const String adminSpecialtiesTitle = 'adminSpecialties.title';
  static const String adminSpecialtiesAdd = 'adminSpecialties.add';
  static const String adminSpecialtiesEdit = 'adminSpecialties.edit';
  static const String adminSpecialtiesNameEn = 'adminSpecialties.nameEn';
  static const String adminSpecialtiesNameAr = 'adminSpecialties.nameAr';
  static const String adminSpecialtiesIcon = 'adminSpecialties.icon';
  static const String adminSpecialtiesDeleteConfirmTitle = 'adminSpecialties.deleteConfirmTitle';
  static const String adminSpecialtiesDeleteConfirmMessage = 'adminSpecialties.deleteConfirmMessage';
  static const String adminSpecialtiesDeleteBlocked = 'adminSpecialties.deleteBlocked';
  static const String adminSpecialtiesSaved = 'adminSpecialties.saved';
  static const String adminSpecialtiesDeleted = 'adminSpecialties.deleted';
  static const String adminSpecialtiesNoSpecialtiesTitle = 'adminSpecialties.noSpecialtiesTitle';
  static const String adminSpecialtiesDoctorsCount = 'adminSpecialties.doctorsCount';

  // --- adminSettings ---
  static const String adminSettingsTitle = 'adminSettings.title';
  static const String adminSettingsScheduling = 'adminSettings.scheduling';
  static const String adminSettingsSlotDuration = 'adminSettings.slotDuration';
  static const String adminSettingsCancellationWindow = 'adminSettings.cancellationWindow';
  static const String adminSettingsCancellationWindowHint = 'adminSettings.cancellationWindowHint';
  static const String adminSettingsRescheduleWindow = 'adminSettings.rescheduleWindow';
  static const String adminSettingsMaxAdvanceBooking = 'adminSettings.maxAdvanceBooking';
  static const String adminSettingsMaxAdvanceBookingHint = 'adminSettings.maxAdvanceBookingHint';
  static const String adminSettingsRequireDoctorApproval = 'adminSettings.requireDoctorApproval';
  static const String adminSettingsRequireDoctorApprovalHint = 'adminSettings.requireDoctorApprovalHint';
  static const String adminSettingsReminders = 'adminSettings.reminders';
  static const String adminSettingsReminderTiming = 'adminSettings.reminderTiming';
  static const String adminSettingsHoursBefore = 'adminSettings.hoursBefore';
  static const String adminSettingsSave = 'adminSettings.save';
  static const String adminSettingsSaved = 'adminSettings.saved';
  static const String adminSettingsSaveFailed = 'adminSettings.saveFailed';
}
