.class enum Lio/github/zeroaicy/util/crash/CrashApphandler$ku;
.super Ljava/lang/Enum;
.source "CrashApphandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/zeroaicy/util/crash/CrashApphandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = "ku"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/github/zeroaicy/util/crash/CrashApphandler$ku;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lio/github/zeroaicy/util/crash/CrashApphandler$ku;

.field public static final kkk:Lio/github/zeroaicy/util/crash/CrashApphandler$ku;

.field public static final okl:Lio/github/zeroaicy/util/crash/CrashApphandler$ku;


# direct methods
.method static final constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lio/github/zeroaicy/util/crash/CrashApphandler$ku;

    const-string v1, "okl"

    invoke-direct {v0, v1, v2}, Lio/github/zeroaicy/util/crash/CrashApphandler$ku;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/zeroaicy/util/crash/CrashApphandler$ku;->okl:Lio/github/zeroaicy/util/crash/CrashApphandler$ku;

    new-instance v0, Lio/github/zeroaicy/util/crash/CrashApphandler$ku;

    const-string v1, "kkk"

    invoke-direct {v0, v1, v3}, Lio/github/zeroaicy/util/crash/CrashApphandler$ku;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/zeroaicy/util/crash/CrashApphandler$ku;->kkk:Lio/github/zeroaicy/util/crash/CrashApphandler$ku;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/github/zeroaicy/util/crash/CrashApphandler$ku;

    sget-object v1, Lio/github/zeroaicy/util/crash/CrashApphandler$ku;->okl:Lio/github/zeroaicy/util/crash/CrashApphandler$ku;

    aput-object v1, v0, v2

    sget-object v1, Lio/github/zeroaicy/util/crash/CrashApphandler$ku;->kkk:Lio/github/zeroaicy/util/crash/CrashApphandler$ku;

    aput-object v1, v0, v3

    sput-object v0, Lio/github/zeroaicy/util/crash/CrashApphandler$ku;->$VALUES:[Lio/github/zeroaicy/util/crash/CrashApphandler$ku;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/zeroaicy/util/crash/CrashApphandler$ku;
    .registers 5

    .line 27
    sget-object v1, Lio/github/zeroaicy/util/crash/CrashApphandler$ku;->$VALUES:[Lio/github/zeroaicy/util/crash/CrashApphandler$ku;

    const/4 v0, 0x0

    :goto_3
    array-length v2, v1

    if-lt v0, v2, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lio/github/zeroaicy/util/crash/CrashApphandler$ku;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    return-object v2

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static final values()[Lio/github/zeroaicy/util/crash/CrashApphandler$ku;
    .registers 1

    .line 27
    sget-object v0, Lio/github/zeroaicy/util/crash/CrashApphandler$ku;->$VALUES:[Lio/github/zeroaicy/util/crash/CrashApphandler$ku;

    invoke-virtual {v0}, [Lio/github/zeroaicy/util/crash/CrashApphandler$ku;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/zeroaicy/util/crash/CrashApphandler$ku;

    return-object v0
.end method
