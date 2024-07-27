.class public interface Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;
.super Ljava/lang/Object;
.source "EnvironmentPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/f401/aide/preference/EnvironmentPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x209
    name = "EditEnvVarContext"
.end annotation


# virtual methods
.method public abstract finish(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getDefaultName()Ljava/lang/String;
.end method

.method public abstract getDefaultValue()Ljava/lang/String;
.end method
