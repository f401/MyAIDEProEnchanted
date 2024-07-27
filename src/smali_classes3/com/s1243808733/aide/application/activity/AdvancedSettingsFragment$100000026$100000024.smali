.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000024;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

.field private final val$apksignv:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000024;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000024;->val$apksignv:[Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000024;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000024;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "IZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 750
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000024;->val$apksignv:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v1, "v1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000024;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    invoke-static {v0, p3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->access$S1000027(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;Z)V

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000024;->val$apksignv:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v1, "v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000024;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    invoke-static {v0, p3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->access$S1000028(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;Z)V

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000024;->val$apksignv:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v1, "v3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000024;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    invoke-static {v0, p3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->access$S1000029(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;Z)V

    :cond_2
    return-void
.end method
