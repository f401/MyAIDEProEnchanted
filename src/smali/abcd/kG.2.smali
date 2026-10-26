.class public final enum Labcd/kG;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/kG;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/kG;

.field public static final enum FH:Labcd/kG;

.field public static final enum Hw:Labcd/kG;

.field private static final Zo:[Labcd/kG;

.field public static final enum j6:Labcd/kG;

.field public static final enum v5:Labcd/kG;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Labcd/kG;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Labcd/kG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/kG;->j6:Labcd/kG;

    new-instance v1, Labcd/kG;

    const-string v2, "COMMIT_TIME_DESC"

    invoke-direct {v1, v2, v7}, Labcd/kG;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/kG;->DW:Labcd/kG;

    new-instance v2, Labcd/kG;

    const-string v3, "TOPO"

    invoke-direct {v2, v3, v8}, Labcd/kG;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/kG;->FH:Labcd/kG;

    new-instance v3, Labcd/kG;

    const-string v4, "REVERSE"

    invoke-direct {v3, v4, v9}, Labcd/kG;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/kG;->Hw:Labcd/kG;

    new-instance v4, Labcd/kG;

    const-string v5, "BOUNDARY"

    invoke-direct {v4, v5, v10}, Labcd/kG;-><init>(Ljava/lang/String;I)V

    sput-object v4, Labcd/kG;->v5:Labcd/kG;

    const/4 v5, 0x5

    new-array v5, v5, [Labcd/kG;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    aput-object v4, v5, v10

    sput-object v5, Labcd/kG;->Zo:[Labcd/kG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/kG;
    .locals 1

    const-class v0, Labcd/kG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/kG;

    return-object v0
.end method

.method public static values()[Labcd/kG;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Labcd/kG;->Zo:[Labcd/kG;

    array-length v1, v0

    new-array v2, v1, [Labcd/kG;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
