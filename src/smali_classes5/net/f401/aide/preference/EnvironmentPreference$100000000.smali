.class Lnet/f401/aide/preference/EnvironmentPreference$100000000;
.super Ljava/lang/Object;
.source "EnvironmentPreference.java"

# interfaces
.implements Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/f401/aide/preference/EnvironmentPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lnet/f401/aide/preference/EnvironmentPreference;


# direct methods
.method constructor <init>(Lnet/f401/aide/preference/EnvironmentPreference;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000000;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    return-void
.end method

.method static access$0(Lnet/f401/aide/preference/EnvironmentPreference$100000000;)Lnet/f401/aide/preference/EnvironmentPreference;
    .registers 1

    iget-object p0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000000;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    return-object p0
.end method


# virtual methods
.method public finish(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
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
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 51
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 56
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v0
.end method
