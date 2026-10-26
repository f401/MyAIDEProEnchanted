.class public final enum Labcd/XH;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Labcd/XH;

    const-string v1, "MISSING"

    invoke-direct {v0, v1, v5}, Labcd/XH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/XH;->j6:Labcd/XH;

    new-instance v1, Labcd/XH;

    const-string v2, "UNINITIALIZED"

    invoke-direct {v1, v2, v6}, Labcd/XH;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/XH;->DW:Labcd/XH;

    new-instance v2, Labcd/XH;

    const-string v3, "INITIALIZED"

    invoke-direct {v2, v3, v7}, Labcd/XH;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/XH;->FH:Labcd/XH;

    new-instance v3, Labcd/XH;

    const-string v4, "REV_CHECKED_OUT"

    invoke-direct {v3, v4, v8}, Labcd/XH;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/XH;->Hw:Labcd/XH;

    const/4 v4, 0x4

    new-array v4, v4, [Labcd/XH;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    sput-object v4, Labcd/XH;->v5:[Labcd/XH;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/XH;
    .locals 1

    const-class v0, Labcd/XH;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/XH;

    return-object v0
.end method

.method public static values()[Labcd/XH;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Labcd/XH;->v5:[Labcd/XH;

    array-length v1, v0

    new-array v2, v1, [Labcd/XH;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
