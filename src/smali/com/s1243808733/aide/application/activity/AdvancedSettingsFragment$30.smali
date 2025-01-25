.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$30;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

    .line 1147
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$30;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 2

    .line 1151
    const-string p1, "https://github.com/AndroidIDE-CN"

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->openUrl(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
