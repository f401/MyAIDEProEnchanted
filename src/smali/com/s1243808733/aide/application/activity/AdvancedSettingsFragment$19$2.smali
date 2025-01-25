.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

.field final val$apksignv:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;[Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 687
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;->val$apksignv:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 5

    .line 691
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;->val$apksignv:[Ljava/lang/String;

    aget-object p1, p1, p2

    const-string v0, "v1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 692
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {p1, p3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fputisapksignv1(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;Z)V

    .line 695
    :cond_11
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;->val$apksignv:[Ljava/lang/String;

    aget-object p1, p1, p2

    const-string v0, "v2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 696
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {p1, p3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fputisapksignv2(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;Z)V

    .line 699
    :cond_22
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;->val$apksignv:[Ljava/lang/String;

    aget-object p1, p1, p2

    const-string p2, "v3"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 700
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {p1, p3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fputisapksignv3(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;Z)V

    :cond_33
    return-void
.end method
