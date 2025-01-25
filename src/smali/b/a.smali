.class public final synthetic Lb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lc/n;
    .registers 2

    .line 2
    new-instance v0, Lc/n;

    invoke-direct {v0, p0}, Lc/n;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lc/n;->q()Lc/n;

    move-result-object p0

    return-object p0
.end method
