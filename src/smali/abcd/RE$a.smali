.class public final enum Labcd/RE$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/RE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/RE$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/RE$a;

.field private static final EQ:[Labcd/RE$a;

.field public static final enum FH:Labcd/RE$a;

.field public static final enum Hw:Labcd/RE$a;

.field public static final enum VH:Labcd/RE$a;

.field public static final enum Zo:Labcd/RE$a;

.field public static final enum gn:Labcd/RE$a;

.field public static final enum j6:Labcd/RE$a;

.field public static final enum tp:Labcd/RE$a;

.field public static final enum u7:Labcd/RE$a;

.field public static final enum v5:Labcd/RE$a;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Labcd/RE$a;

    const-string v1, "NOT_ATTEMPTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RE$a;->j6:Labcd/RE$a;

    new-instance v1, Labcd/RE$a;

    const-string v2, "LOCK_FAILURE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/RE$a;->DW:Labcd/RE$a;

    new-instance v2, Labcd/RE$a;

    const-string v3, "NO_CHANGE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/RE$a;->FH:Labcd/RE$a;

    new-instance v3, Labcd/RE$a;

    const-string v4, "NEW"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/RE$a;->Hw:Labcd/RE$a;

    new-instance v4, Labcd/RE$a;

    const-string v5, "FORCED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Labcd/RE$a;->v5:Labcd/RE$a;

    new-instance v5, Labcd/RE$a;

    const-string v6, "FAST_FORWARD"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Labcd/RE$a;->Zo:Labcd/RE$a;

    new-instance v6, Labcd/RE$a;

    const-string v7, "REJECTED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Labcd/RE$a;->VH:Labcd/RE$a;

    new-instance v7, Labcd/RE$a;

    const-string v8, "REJECTED_CURRENT_BRANCH"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Labcd/RE$a;->gn:Labcd/RE$a;

    new-instance v8, Labcd/RE$a;

    const-string v9, "IO_FAILURE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Labcd/RE$a;->u7:Labcd/RE$a;

    new-instance v9, Labcd/RE$a;

    const-string v10, "RENAMED"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Labcd/RE$a;->tp:Labcd/RE$a;

    const/16 v10, 0xa

    new-array v10, v10, [Labcd/RE$a;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    sput-object v10, Labcd/RE$a;->EQ:[Labcd/RE$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/RE$a;
    .locals 1

    const-class v0, Labcd/RE$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/RE$a;

    return-object v0
.end method

.method public static values()[Labcd/RE$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Labcd/RE$a;->EQ:[Labcd/RE$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/RE$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
