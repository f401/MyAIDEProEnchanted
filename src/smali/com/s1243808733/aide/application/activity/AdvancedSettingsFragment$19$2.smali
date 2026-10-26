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
    .locals 0
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
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;->val$apksignv:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v1, "v1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {v0, p3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fputisapksignv1(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;Z)V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;->val$apksignv:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v1, "v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {v0, p3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fputisapksignv2(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;Z)V

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;->val$apksignv:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v1, "v3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 700
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {v0, p3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fputisapksignv3(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;Z)V

    :cond_2
    return-void
.end method
