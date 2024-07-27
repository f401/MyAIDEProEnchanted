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
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Labcd/XH;

    const-string v1, "MISSING"

    invoke-direct {v0, v1, v2}, Labcd/XH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/XH;->j6:Labcd/XH;

    new-instance v0, Labcd/XH;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v3}, Labcd/XH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/XH;->DW:Labcd/XH;

    new-instance v0, Labcd/XH;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Labcd/XH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/XH;->FH:Labcd/XH;

    new-instance v0, Labcd/XH;

    const-string v1, "REV_CHECKED_OUT"

    invoke-direct {v0, v1, v5}, Labcd/XH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/XH;->Hw:Labcd/XH;

    const/4 v0, 0x4

    new-array v0, v0, [Labcd/XH;

    sget-object v1, Labcd/XH;->j6:Labcd/XH;

    aput-object v1, v0, v2

    sget-object v1, Labcd/XH;->DW:Labcd/XH;

    aput-object v1, v0, v3

    sget-object v1, Labcd/XH;->FH:Labcd/XH;

    aput-object v1, v0, v4

    sget-object v1, Labcd/XH;->Hw:Labcd/XH;

    aput-object v1, v0, v5

    sput-object v0, Labcd/XH;->v5:[Labcd/XH;

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

    move-result-object v0

    check-cast v0, Labcd/XH;

    return-object v0
.end method

.method public static values()[Labcd/XH;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Labcd/XH;->v5:[Labcd/XH;

    array-length v1, v0

    new-array v2, v1, [Labcd/XH;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
