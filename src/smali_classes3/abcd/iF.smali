.class public abstract enum Labcd/iF;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
    .registers 16

    new-instance v0, Labcd/_E;

    const-string v1, "BARE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/_E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/iF;->j6:Labcd/iF;

    new-instance v1, Labcd/aF;

    const-string v3, "SAFE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Labcd/aF;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/iF;->DW:Labcd/iF;

    new-instance v3, Labcd/bF;

    const-string v5, "MERGING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Labcd/bF;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/iF;->FH:Labcd/iF;

    new-instance v5, Labcd/cF;

    const-string v7, "MERGING_RESOLVED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Labcd/cF;-><init>(Ljava/lang/String;I)V

    sput-object v5, Labcd/iF;->Hw:Labcd/iF;

    new-instance v7, Labcd/dF;

    const-string v9, "CHERRY_PICKING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Labcd/dF;-><init>(Ljava/lang/String;I)V

    sput-object v7, Labcd/iF;->v5:Labcd/iF;

    new-instance v9, Labcd/eF;

    const-string v11, "CHERRY_PICKING_RESOLVED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Labcd/eF;-><init>(Ljava/lang/String;I)V

    sput-object v9, Labcd/iF;->Zo:Labcd/iF;

    new-instance v11, Labcd/fF;

    const-string v13, "REBASING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Labcd/fF;-><init>(Ljava/lang/String;I)V

    sput-object v11, Labcd/iF;->VH:Labcd/iF;

    new-instance v13, Labcd/gF;

    const-string v15, "REBASING_REBASING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Labcd/gF;-><init>(Ljava/lang/String;I)V

    sput-object v13, Labcd/iF;->gn:Labcd/iF;

    new-instance v15, Labcd/hF;

    const-string v14, "APPLY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Labcd/hF;-><init>(Ljava/lang/String;I)V

    sput-object v15, Labcd/iF;->u7:Labcd/iF;

    new-instance v14, Labcd/XE;

    const-string v12, "REBASING_MERGE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Labcd/XE;-><init>(Ljava/lang/String;I)V

    sput-object v14, Labcd/iF;->tp:Labcd/iF;

    new-instance v12, Labcd/YE;

    const-string v10, "REBASING_INTERACTIVE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Labcd/YE;-><init>(Ljava/lang/String;I)V

    sput-object v12, Labcd/iF;->EQ:Labcd/iF;

    new-instance v10, Labcd/ZE;

    const-string v8, "BISECTING"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Labcd/ZE;-><init>(Ljava/lang/String;I)V

    sput-object v10, Labcd/iF;->we:Labcd/iF;

    const/16 v8, 0xc

    new-array v8, v8, [Labcd/iF;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Labcd/iF;->J0:[Labcd/iF;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILabcd/iF;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/iF;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/iF;
    .registers 2

    const-class v0, Labcd/iF;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Labcd/iF;

    return-object p0
.end method

.method public static values()[Labcd/iF;
    .registers 4

    sget-object v0, Labcd/iF;->J0:[Labcd/iF;

    array-length v1, v0

    new-array v2, v1, [Labcd/iF;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract Hw()Z
.end method
