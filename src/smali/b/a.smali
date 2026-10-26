.class public final synthetic Lb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lc/n;
    .locals 1

    .line 2
    new-instance v0, Lc/n;

    invoke-direct {v0, p0}, Lc/n;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lc/n;->q()Lc/n;

    move-result-object v0

    return-object v0
.end method
