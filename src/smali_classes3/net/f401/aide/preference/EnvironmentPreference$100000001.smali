.class Lnet/f401/aide/preference/EnvironmentPreference$100000001;
.super Ljava/lang/Object;
.source "EnvironmentPreference.java"

# interfaces
.implements Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;


# instance fields
.field private final this$0:Lnet/f401/aide/preference/EnvironmentPreference;

.field private final val$position:I


# direct methods
.method constructor <init>(Lnet/f401/aide/preference/EnvironmentPreference;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000001;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    iput p2, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000001;->val$position:I

    return-void
.end method

.method static access$0(Lnet/f401/aide/preference/EnvironmentPreference$100000001;)Lnet/f401/aide/preference/EnvironmentPreference;
    .registers 2

    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000001;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    return-object v0
.end method


# virtual methods
.method public finish(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 70
    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000001;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    invoke-static {v0}, Lnet/f401/aide/preference/EnvironmentPreference;->access$L1000000(Lnet/f401/aide/preference/EnvironmentPreference;)Lnet/f401/aide/adapter/EnvListAdapter;

    move-result-object v0

    iget v1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000001;->val$position:I

    invoke-virtual {v0, v1, p1, p2}, Lnet/f401/aide/adapter/EnvListAdapter;->set(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDefaultName()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 75
    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000001;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    invoke-static {v0}, Lnet/f401/aide/preference/EnvironmentPreference;->access$L1000000(Lnet/f401/aide/preference/EnvironmentPreference;)Lnet/f401/aide/adapter/EnvListAdapter;

    move-result-object v0

    iget v1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000001;->val$position:I

    invoke-virtual {v0, v1}, Lnet/f401/aide/adapter/EnvListAdapter;->get(I)Lnet/f401/aide/EnvItem;

    move-result-object v0

    invoke-virtual {v0}, Lnet/f401/aide/EnvItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 80
    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000001;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    invoke-static {v0}, Lnet/f401/aide/preference/EnvironmentPreference;->access$L1000000(Lnet/f401/aide/preference/EnvironmentPreference;)Lnet/f401/aide/adapter/EnvListAdapter;

    move-result-object v0

    iget v1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000001;->val$position:I

    invoke-virtual {v0, v1}, Lnet/f401/aide/adapter/EnvListAdapter;->get(I)Lnet/f401/aide/EnvItem;

    move-result-object v0

    invoke-virtual {v0}, Lnet/f401/aide/EnvItem;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
