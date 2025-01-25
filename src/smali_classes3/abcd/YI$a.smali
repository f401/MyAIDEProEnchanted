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
        "Ljava/lang/Enum<",
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
    .registers 16

    new-instance v0, Labcd/YI$a;

    const-string v1, "NOT_ATTEMPTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/YI$a;->j6:Labcd/YI$a;

    new-instance v1, Labcd/YI$a;

    const-string v3, "UP_TO_DATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/YI$a;->DW:Labcd/YI$a;

    new-instance v3, Labcd/YI$a;

    const-string v5, "REJECTED_NONFASTFORWARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/YI$a;->FH:Labcd/YI$a;

    new-instance v5, Labcd/YI$a;

    const-string v7, "REJECTED_NODELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Labcd/YI$a;->Hw:Labcd/YI$a;

    new-instance v7, Labcd/YI$a;

    const-string v9, "REJECTED_REMOTE_CHANGED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Labcd/YI$a;->v5:Labcd/YI$a;

    new-instance v9, Labcd/YI$a;

    const-string v11, "REJECTED_OTHER_REASON"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Labcd/YI$a;->Zo:Labcd/YI$a;

    new-instance v11, Labcd/YI$a;

    const-string v13, "NON_EXISTING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Labcd/YI$a;->VH:Labcd/YI$a;

    new-instance v13, Labcd/YI$a;

    const-string v15, "AWAITING_REPORT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Labcd/YI$a;->gn:Labcd/YI$a;

    new-instance v15, Labcd/YI$a;

    const-string v14, "OK"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Labcd/YI$a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Labcd/YI$a;->u7:Labcd/YI$a;

    const/16 v14, 0x9

    new-array v14, v14, [Labcd/YI$a;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Labcd/YI$a;->tp:[Labcd/YI$a;

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

    move-result-object p0

    check-cast p0, Labcd/YI$a;

    return-object p0
.end method

.method public static values()[Labcd/YI$a;
    .registers 4

    sget-object v0, Labcd/YI$a;->tp:[Labcd/YI$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/YI$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
