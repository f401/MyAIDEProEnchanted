.class public abstract enum Labcd/iF;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/iF;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/iF;

.field public static final enum EQ:Labcd/iF;

.field public static final enum FH:Labcd/iF;

.field public static final enum Hw:Labcd/iF;

.field private static final J0:[Labcd/iF;

.field public static final enum VH:Labcd/iF;

.field public static final enum Zo:Labcd/iF;

.field public static final enum gn:Labcd/iF;

.field public static final enum j6:Labcd/iF;

.field public static final enum tp:Labcd/iF;

.field public static final enum u7:Labcd/iF;

.field public static final enum v5:Labcd/iF;

.field public static final enum we:Labcd/iF;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Labcd/_E;

    const-string v1, "BARE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/_E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/iF;->j6:Labcd/iF;

    new-instance v1, Labcd/aF;

    const-string v2, "SAFE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Labcd/aF;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/iF;->DW:Labcd/iF;

    new-instance v2, Labcd/bF;

    const-string v3, "MERGING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Labcd/bF;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/iF;->FH:Labcd/iF;

    new-instance v3, Labcd/cF;

    const-string v4, "MERGING_RESOLVED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Labcd/cF;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/iF;->Hw:Labcd/iF;

    new-instance v4, Labcd/dF;

    const-string v5, "CHERRY_PICKING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Labcd/dF;-><init>(Ljava/lang/String;I)V

    sput-object v4, Labcd/iF;->v5:Labcd/iF;

    new-instance v5, Labcd/eF;

    const-string v6, "CHERRY_PICKING_RESOLVED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Labcd/eF;-><init>(Ljava/lang/String;I)V

    sput-object v5, Labcd/iF;->Zo:Labcd/iF;

    new-instance v6, Labcd/fF;

    const-string v7, "REBASING"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Labcd/fF;-><init>(Ljava/lang/String;I)V

    sput-object v6, Labcd/iF;->VH:Labcd/iF;

    new-instance v7, Labcd/gF;

    const-string v8, "REBASING_REBASING"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Labcd/gF;-><init>(Ljava/lang/String;I)V

    sput-object v7, Labcd/iF;->gn:Labcd/iF;

    new-instance v8, Labcd/hF;

    const-string v9, "APPLY"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Labcd/hF;-><init>(Ljava/lang/String;I)V

    sput-object v8, Labcd/iF;->u7:Labcd/iF;

    new-instance v9, Labcd/XE;

    const-string v10, "REBASING_MERGE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Labcd/XE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Labcd/iF;->tp:Labcd/iF;

    new-instance v10, Labcd/YE;

    const-string v11, "REBASING_INTERACTIVE"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Labcd/YE;-><init>(Ljava/lang/String;I)V

    sput-object v10, Labcd/iF;->EQ:Labcd/iF;

    new-instance v11, Labcd/ZE;

    const-string v12, "BISECTING"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Labcd/ZE;-><init>(Ljava/lang/String;I)V

    sput-object v11, Labcd/iF;->we:Labcd/iF;

    const/16 v12, 0xc

    new-array v12, v12, [Labcd/iF;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v0, 0x2

    aput-object v2, v12, v0

    const/4 v0, 0x3

    aput-object v3, v12, v0

    const/4 v0, 0x4

    aput-object v4, v12, v0

    const/4 v0, 0x5

    aput-object v5, v12, v0

    const/4 v0, 0x6

    aput-object v6, v12, v0

    const/4 v0, 0x7

    aput-object v7, v12, v0

    const/16 v0, 0x8

    aput-object v8, v12, v0

    const/16 v0, 0x9

    aput-object v9, v12, v0

    const/16 v0, 0xa

    aput-object v10, v12, v0

    const/16 v0, 0xb

    aput-object v11, v12, v0

    sput-object v12, Labcd/iF;->J0:[Labcd/iF;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILabcd/iF;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Labcd/iF;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/iF;
    .locals 1

    const-class v0, Labcd/iF;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/iF;

    return-object v0
.end method

.method public static values()[Labcd/iF;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Labcd/iF;->J0:[Labcd/iF;

    array-length v1, v0

    new-array v2, v1, [Labcd/iF;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract Hw()Z
.end method
