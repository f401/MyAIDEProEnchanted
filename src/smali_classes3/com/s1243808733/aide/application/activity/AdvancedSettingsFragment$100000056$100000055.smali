.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000056$100000055;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000056;

.field private final val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000056;Landroid/app/Dialog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000056$100000055;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000056;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000056$100000055;->val$dialog:Landroid/app/Dialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000056$100000055;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000056;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000056$100000055;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000056;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1631
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000056$100000055;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
