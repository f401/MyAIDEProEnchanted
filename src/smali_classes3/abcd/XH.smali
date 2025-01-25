.class public final enum Labcd/XH;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Labcd/XH;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/XH;

.field public static final enum FH:Labcd/XH;

.field public static final enum Hw:Labcd/XH;

.field public static final enum j6:Labcd/XH;

.field private static final v5:[Labcd/XH;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Labcd/XH;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/XH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/XH;->j6:Labcd/XH;

    new-instance v1, Labcd/XH;

    const-string v3, "UNINITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Labcd/XH;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/XH;->DW:Labcd/XH;

    new-instance v3, Labcd/XH;

    const-string v5, "INITIALIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Labcd/XH;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/XH;->FH:Labcd/XH;

    new-instance v5, Labcd/XH;

    const-string v7, "REV_CHECKED_OUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Labcd/XH;-><init>(Ljava/lang/String;I)V

    sput-object v5, Labcd/XH;->Hw:Labcd/XH;

    const/4 v7, 0x4

    new-array v7, v7, [Labcd/XH;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Labcd/XH;->v5:[Labcd/XH;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/XH;
    .registers 2

    const-class v0, Labcd/XH;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Labcd/XH;

    return-object p0
.end method

.method public static values()[Labcd/XH;
    .registers 4

    sget-object v0, Labcd/XH;->v5:[Labcd/XH;

    array-length v1, v0

    new-array v2, v1, [Labcd/XH;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
