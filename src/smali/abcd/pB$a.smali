.class public abstract enum Labcd/pB$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/pB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/pB$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/pB$a;

.field public static final enum FH:Labcd/pB$a;

.field public static final enum Hw:Labcd/pB$a;

.field private static final VH:[Labcd/pB$a;

.field public static final enum Zo:Labcd/pB$a;

.field public static final enum j6:Labcd/pB$a;

.field public static final enum v5:Labcd/pB$a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Labcd/jB;

    const-string v1, "FAST_FORWARD"

    invoke-direct {v0, v1, v8}, Labcd/jB;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/pB$a;->j6:Labcd/pB$a;

    new-instance v1, Labcd/kB;

    const-string v2, "ALREADY_UP_TO_DATE"

    invoke-direct {v1, v2, v9}, Labcd/kB;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/pB$a;->DW:Labcd/pB$a;

    new-instance v2, Labcd/lB;

    const-string v3, "FAILED"

    invoke-direct {v2, v3, v10}, Labcd/lB;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/pB$a;->FH:Labcd/pB$a;

    new-instance v3, Labcd/mB;

    const-string v4, "MERGED"

    invoke-direct {v3, v4, v11}, Labcd/mB;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/pB$a;->Hw:Labcd/pB$a;

    new-instance v4, Labcd/nB;

    const-string v5, "CONFLICTING"

    invoke-direct {v4, v5, v12}, Labcd/nB;-><init>(Ljava/lang/String;I)V

    sput-object v4, Labcd/pB$a;->v5:Labcd/pB$a;

    new-instance v5, Labcd/oB;

    const-string v6, "NOT_SUPPORTED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Labcd/oB;-><init>(Ljava/lang/String;I)V

    sput-object v5, Labcd/pB$a;->Zo:Labcd/pB$a;

    const/4 v6, 0x6

    new-array v6, v6, [Labcd/pB$a;

    aput-object v0, v6, v8

    aput-object v1, v6, v9

    aput-object v2, v6, v10

    aput-object v3, v6, v11

    aput-object v4, v6, v12

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Labcd/pB$a;->VH:[Labcd/pB$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILabcd/pB$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Labcd/pB$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/pB$a;
    .locals 1

    const-class v0, Labcd/pB$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/pB$a;

    return-object v0
.end method

.method public static values()[Labcd/pB$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Labcd/pB$a;->VH:[Labcd/pB$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/pB$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract Hw()Z
.end method
