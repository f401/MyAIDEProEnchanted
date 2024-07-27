.class Lnet/f401/aide/preference/EnvironmentPreference$100000003$100000002;
.super Ljava/lang/Object;
.source "EnvironmentPreference.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lnet/f401/aide/preference/EnvironmentPreference$100000003;

.field private final val$position:I


# direct methods
.method constructor <init>(Lnet/f401/aide/preference/EnvironmentPreference$100000003;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003$100000002;->this$0:Lnet/f401/aide/preference/EnvironmentPreference$100000003;

    iput p2, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003$100000002;->val$position:I

    return-void
.end method

.method static access$0(Lnet/f401/aide/preference/EnvironmentPreference$100000003$100000002;)Lnet/f401/aide/preference/EnvironmentPreference$100000003;
    .registers 2

    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003$100000002;->this$0:Lnet/f401/aide/preference/EnvironmentPreference$100000003;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 111
    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003$100000002;->this$0:Lnet/f401/aide/preference/EnvironmentPreference$100000003;

    invoke-static {v0}, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->access$0(Lnet/f401/aide/preference/EnvironmentPreference$100000003;)Lnet/f401/aide/preference/EnvironmentPreference;

    move-result-object v0

    invoke-static {v0}, Lnet/f401/aide/preference/EnvironmentPreference;->access$L1000000(Lnet/f401/aide/preference/EnvironmentPreference;)Lnet/f401/aide/adapter/EnvListAdapter;

    move-result-object v0

    iget v1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003$100000002;->val$position:I

    invoke-virtual {v0, v1}, Lnet/f401/aide/adapter/EnvListAdapter;->remove(I)V

    .line 112
    const/4 v0, 0x0

    return v0
.end method
