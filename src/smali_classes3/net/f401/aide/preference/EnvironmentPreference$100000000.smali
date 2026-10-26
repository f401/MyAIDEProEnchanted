.class Lnet/f401/aide/preference/EnvironmentPreference$100000000;
.super Ljava/lang/Object;
.source "EnvironmentPreference.java"

# interfaces
.implements Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;


# instance fields
.field private final this$0:Lnet/f401/aide/preference/EnvironmentPreference;


# direct methods
.method constructor <init>(Lnet/f401/aide/preference/EnvironmentPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000000;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    return-void
.end method

.method static access$0(Lnet/f401/aide/preference/EnvironmentPreference$100000000;)Lnet/f401/aide/preference/EnvironmentPreference;
    .locals 1

    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000000;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    return-object v0
.end method


# virtual methods
.method public finish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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

    .line 46
    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000000;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    invoke-static {v0}, Lnet/f401/aide/preference/EnvironmentPreference;->access$L1000000(Lnet/f401/aide/preference/EnvironmentPreference;)Lnet/f401/aide/adapter/EnvListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/f401/aide/adapter/EnvListAdapter;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDefaultName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 51
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    return-object v1
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 56
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    return-object v1
.end method
