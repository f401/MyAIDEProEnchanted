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
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Labcd/_E;

    const-string v1, "BARE"

    invoke-direct {v0, v1, v3}, Labcd/_E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/iF;->j6:Labcd/iF;

    new-instance v0, Labcd/aF;

    const-string v1, "SAFE"

    invoke-direct {v0, v1, v4}, Labcd/aF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/iF;->DW:Labcd/iF;

    new-instance v0, Labcd/bF;

    const-string v1, "MERGING"

    invoke-direct {v0, v1, v5}, Labcd/bF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/iF;->FH:Labcd/iF;

    new-instance v0, Labcd/cF;

    const-string v1, "MERGING_RESOLVED"

    invoke-direct {v0, v1, v6}, Labcd/cF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/iF;->Hw:Labcd/iF;

    new-instance v0, Labcd/dF;

    const-string v1, "CHERRY_PICKING"

    invoke-direct {v0, v1, v7}, Labcd/dF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/iF;->v5:Labcd/iF;

    new-instance v0, Labcd/eF;

    const-string v1, "CHERRY_PICKING_RESOLVED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Labcd/eF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/iF;->Zo:Labcd/iF;

    new-instance v0, Labcd/fF;

    const-string v1, "REBASING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Labcd/fF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/iF;->VH:Labcd/iF;

    new-instance v0, Labcd/gF;

    const-string v1, "REBASING_REBASING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Labcd/gF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/iF;->gn:Labcd/iF;

    new-instance v0, Labcd/hF;

    const-string v1, "APPLY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Labcd/hF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/iF;->u7:Labcd/iF;

    new-instance v0, Labcd/XE;

    const-string v1, "REBASING_MERGE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Labcd/XE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/iF;->tp:Labcd/iF;

    new-instance v0, Labcd/YE;

    const-string v1, "REBASING_INTERACTIVE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Labcd/YE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/iF;->EQ:Labcd/iF;

    new-instance v0, Labcd/ZE;

    const-string v1, "BISECTING"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Labcd/ZE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/iF;->we:Labcd/iF;

    const/16 v0, 0xc

    new-array v0, v0, [Labcd/iF;

    sget-object v1, Labcd/iF;->j6:Labcd/iF;

    aput-object v1, v0, v3

    sget-object v1, Labcd/iF;->DW:Labcd/iF;

    aput-object v1, v0, v4

    sget-object v1, Labcd/iF;->FH:Labcd/iF;

    aput-object v1, v0, v5

    sget-object v1, Labcd/iF;->Hw:Labcd/iF;

    aput-object v1, v0, v6

    sget-object v1, Labcd/iF;->v5:Labcd/iF;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Labcd/iF;->Zo:Labcd/iF;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Labcd/iF;->VH:Labcd/iF;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Labcd/iF;->gn:Labcd/iF;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Labcd/iF;->u7:Labcd/iF;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Labcd/iF;->tp:Labcd/iF;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Labcd/iF;->EQ:Labcd/iF;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Labcd/iF;->we:Labcd/iF;

    aput-object v2, v0, v1

    sput-object v0, Labcd/iF;->J0:[Labcd/iF;

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

    move-result-object v0

    check-cast v0, Labcd/iF;

    return-object v0
.end method

.method public static values()[Labcd/iF;
    .registers 4

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
