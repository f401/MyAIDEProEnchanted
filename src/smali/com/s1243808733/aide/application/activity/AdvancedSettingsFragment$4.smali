.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$4;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V
    .registers 2

    .line 334
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$4;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 338
    invoke-static {}, Lcom/s1243808733/aide/AideMainActivity;->getActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/AideMainActivity;->adjutActionBar()V

    const/4 p1, 0x1

    return p1
.end method
