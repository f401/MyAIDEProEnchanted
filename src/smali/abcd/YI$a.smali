.class public final enum Labcd/YI$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/YI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/YI$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/YI$a;

.field public static final enum FH:Labcd/YI$a;

.field public static final enum Hw:Labcd/YI$a;

.field public static final enum VH:Labcd/YI$a;

.field public static final enum Zo:Labcd/YI$a;

.field public static final enum gn:Labcd/YI$a;

.field public static final enum j6:Labcd/YI$a;

.field private static final tp:[Labcd/YI$a;

.field public static final enum u7:Labcd/YI$a;

.field public static final enum v5:Labcd/YI$a;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Labcd/YI$a;

    const-string v1, "NOT_ATTEMPTED"

    invoke-direct {v0, v1, v3}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/YI$a;->j6:Labcd/YI$a;

    new-instance v0, Labcd/YI$a;

    const-string v1, "UP_TO_DATE"

    invoke-direct {v0, v1, v4}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/YI$a;->DW:Labcd/YI$a;

    new-instance v0, Labcd/YI$a;

    const-string v1, "REJECTED_NONFASTFORWARD"

    invoke-direct {v0, v1, v5}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/YI$a;->FH:Labcd/YI$a;

    new-instance v0, Labcd/YI$a;

    const-string v1, "REJECTED_NODELETE"

    invoke-direct {v0, v1, v6}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/YI$a;->Hw:Labcd/YI$a;

    new-instance v0, Labcd/YI$a;

    const-string v1, "REJECTED_REMOTE_CHANGED"

    invoke-direct {v0, v1, v7}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/YI$a;->v5:Labcd/YI$a;

    new-instance v0, Labcd/YI$a;

    const-string v1, "REJECTED_OTHER_REASON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/YI$a;->Zo:Labcd/YI$a;

    new-instance v0, Labcd/YI$a;

    const-string v1, "NON_EXISTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/YI$a;->VH:Labcd/YI$a;

    new-instance v0, Labcd/YI$a;

    const-string v1, "AWAITING_REPORT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/YI$a;->gn:Labcd/YI$a;

    new-instance v0, Labcd/YI$a;

    const-string v1, "OK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/YI$a;->u7:Labcd/YI$a;

    const/16 v0, 0x9

    new-array v0, v0, [Labcd/YI$a;

    sget-object v1, Labcd/YI$a;->j6:Labcd/YI$a;

    aput-object v1, v0, v3

    sget-object v1, Labcd/YI$a;->DW:Labcd/YI$a;

    aput-object v1, v0, v4

    sget-object v1, Labcd/YI$a;->FH:Labcd/YI$a;

    aput-object v1, v0, v5

    sget-object v1, Labcd/YI$a;->Hw:Labcd/YI$a;

    aput-object v1, v0, v6

    sget-object v1, Labcd/YI$a;->v5:Labcd/YI$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Labcd/YI$a;->Zo:Labcd/YI$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Labcd/YI$a;->VH:Labcd/YI$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Labcd/YI$a;->gn:Labcd/YI$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Labcd/YI$a;->u7:Labcd/YI$a;

    aput-object v2, v0, v1

    sput-object v0, Labcd/YI$a;->tp:[Labcd/YI$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/YI$a;
    .registers 2

    const-class v0, Labcd/YI$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/YI$a;

    return-object v0
.end method

.method public static values()[Labcd/YI$a;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Labcd/YI$a;->tp:[Labcd/YI$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/YI$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
