.class public final enum Labcd/OI$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/OI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/OI$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/OI$a;

.field public static final enum FH:Labcd/OI$a;

.field public static final enum Hw:Labcd/OI$a;

.field public static final enum VH:Labcd/OI$a;

.field public static final enum Zo:Labcd/OI$a;

.field public static final enum gn:Labcd/OI$a;

.field public static final enum j6:Labcd/OI$a;

.field private static final tp:[Labcd/OI$a;

.field public static final enum u7:Labcd/OI$a;

.field public static final enum v5:Labcd/OI$a;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    new-instance v0, Labcd/OI$a;

    const-string v1, "NOT_ATTEMPTED"

    invoke-direct {v0, v1, v11}, Labcd/OI$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/OI$a;->j6:Labcd/OI$a;

    new-instance v1, Labcd/OI$a;

    const-string v2, "REJECTED_NOCREATE"

    invoke-direct {v1, v2, v12}, Labcd/OI$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/OI$a;->DW:Labcd/OI$a;

    new-instance v2, Labcd/OI$a;

    const-string v3, "REJECTED_NODELETE"

    invoke-direct {v2, v3, v13}, Labcd/OI$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/OI$a;->FH:Labcd/OI$a;

    new-instance v3, Labcd/OI$a;

    const-string v4, "REJECTED_NONFASTFORWARD"

    invoke-direct {v3, v4, v14}, Labcd/OI$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/OI$a;->Hw:Labcd/OI$a;

    new-instance v4, Labcd/OI$a;

    const-string v5, "REJECTED_CURRENT_BRANCH"

    invoke-direct {v4, v5, v15}, Labcd/OI$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Labcd/OI$a;->v5:Labcd/OI$a;

    new-instance v5, Labcd/OI$a;

    const-string v6, "REJECTED_MISSING_OBJECT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Labcd/OI$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Labcd/OI$a;->Zo:Labcd/OI$a;

    new-instance v6, Labcd/OI$a;

    const-string v7, "REJECTED_OTHER_REASON"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Labcd/OI$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Labcd/OI$a;->VH:Labcd/OI$a;

    new-instance v7, Labcd/OI$a;

    const-string v8, "LOCK_FAILURE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Labcd/OI$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Labcd/OI$a;->gn:Labcd/OI$a;

    new-instance v8, Labcd/OI$a;

    const-string v9, "OK"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Labcd/OI$a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Labcd/OI$a;->u7:Labcd/OI$a;

    const/16 v9, 0x9

    new-array v9, v9, [Labcd/OI$a;

    aput-object v0, v9, v11

    aput-object v1, v9, v12

    aput-object v2, v9, v13

    aput-object v3, v9, v14

    aput-object v4, v9, v15

    const/4 v0, 0x5

    aput-object v5, v9, v0

    const/4 v0, 0x6

    aput-object v6, v9, v0

    const/4 v0, 0x7

    aput-object v7, v9, v0

    const/16 v0, 0x8

    aput-object v8, v9, v0

    sput-object v9, Labcd/OI$a;->tp:[Labcd/OI$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/OI$a;
    .locals 1

    const-class v0, Labcd/OI$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/OI$a;

    return-object v0
.end method

.method public static values()[Labcd/OI$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Labcd/OI$a;->tp:[Labcd/OI$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/OI$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
