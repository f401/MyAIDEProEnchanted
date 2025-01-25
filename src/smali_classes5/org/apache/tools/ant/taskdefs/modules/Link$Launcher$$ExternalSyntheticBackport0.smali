.class public final synthetic Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
