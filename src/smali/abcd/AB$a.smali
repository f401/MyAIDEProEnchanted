.class public abstract enum Labcd/AB$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/AB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/AB$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/AB$a;

.field public static final enum FH:Labcd/AB$a;

.field public static final enum Hw:Labcd/AB$a;

.field private static final VH:[Labcd/AB$a;

.field public static final enum Zo:Labcd/AB$a;

.field public static final enum j6:Labcd/AB$a;

.field public static final enum v5:Labcd/AB$a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Labcd/uB;

    const-string v1, "OK"

    invoke-direct {v0, v1, v8}, Labcd/uB;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/AB$a;->j6:Labcd/AB$a;

    new-instance v1, Labcd/vB;

    const-string v2, "ABORTED"

    invoke-direct {v1, v2, v9}, Labcd/vB;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/AB$a;->DW:Labcd/AB$a;

    new-instance v2, Labcd/wB;

    const-string v3, "STOPPED"

    invoke-direct {v2, v3, v10}, Labcd/wB;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/AB$a;->FH:Labcd/AB$a;

    new-instance v3, Labcd/xB;

    const-string v4, "FAILED"

    invoke-direct {v3, v4, v11}, Labcd/xB;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/AB$a;->Hw:Labcd/AB$a;

    new-instance v4, Labcd/yB;

    const-string v5, "UP_TO_DATE"

    invoke-direct {v4, v5, v12}, Labcd/yB;-><init>(Ljava/lang/String;I)V

    sput-object v4, Labcd/AB$a;->v5:Labcd/AB$a;

    new-instance v5, Labcd/zB;

    const-string v6, "FAST_FORWARD"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Labcd/zB;-><init>(Ljava/lang/String;I)V

    sput-object v5, Labcd/AB$a;->Zo:Labcd/AB$a;

    const/4 v6, 0x6

    new-array v6, v6, [Labcd/AB$a;

    aput-object v0, v6, v8

    aput-object v1, v6, v9

    aput-object v2, v6, v10

    aput-object v3, v6, v11

    aput-object v4, v6, v12

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Labcd/AB$a;->VH:[Labcd/AB$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILabcd/AB$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Labcd/AB$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/AB$a;
    .locals 1

    const-class v0, Labcd/AB$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/AB$a;

    return-object v0
.end method

.method public static values()[Labcd/AB$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Labcd/AB$a;->VH:[Labcd/AB$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/AB$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract Hw()Z
.end method
