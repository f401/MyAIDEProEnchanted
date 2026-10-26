.class Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000000;
.super Ljava/lang/Object;
.source "EnvironmentPreference.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lnet/f401/aide/preference/EnvironmentPreference$100000002;

.field private final val$name:Ljava/lang/String;

.field private final val$position:I


# direct methods
.method constructor <init>(Lnet/f401/aide/preference/EnvironmentPreference$100000002;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000000;->this$0:Lnet/f401/aide/preference/EnvironmentPreference$100000002;

    iput p2, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000000;->val$position:I

    iput-object p3, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000000;->val$name:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000000;)Lnet/f401/aide/preference/EnvironmentPreference$100000002;
    .locals 1

    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000000;->this$0:Lnet/f401/aide/preference/EnvironmentPreference$100000002;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 84
    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000000;->this$0:Lnet/f401/aide/preference/EnvironmentPreference$100000002;

    invoke-static {v0}, Lnet/f401/aide/preference/EnvironmentPreference$100000002;->access$0(Lnet/f401/aide/preference/EnvironmentPreference$100000002;)Lnet/f401/aide/preference/EnvironmentPreference;

    move-result-object v0

    invoke-static {v0}, Lnet/f401/aide/preference/EnvironmentPreference;->access$L1000000(Lnet/f401/aide/preference/EnvironmentPreference;)Lnet/f401/aide/EnvPreferenceAdapter;

    move-result-object v0

    iget v1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000000;->val$position:I

    invoke-virtual {v0, v1}, Lnet/f401/aide/EnvPreferenceAdapter;->remove(I)V

    .line 85
    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000000;->val$name:Ljava/lang/String;

    invoke-static {v0}, Lnet/f401/aide/FUtils;->remove(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method
