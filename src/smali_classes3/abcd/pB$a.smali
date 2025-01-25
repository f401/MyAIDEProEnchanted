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
        "Ljava/lang/Enum<",
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
    .registers 13

    new-instance v0, Labcd/jB;

    const-string v1, "FAST_FORWARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/jB;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/pB$a;->j6:Labcd/pB$a;

    new-instance v1, Labcd/kB;

    const-string v3, "ALREADY_UP_TO_DATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Labcd/kB;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/pB$a;->DW:Labcd/pB$a;

    new-instance v3, Labcd/lB;

    const-string v5, "FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Labcd/lB;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/pB$a;->FH:Labcd/pB$a;

    new-instance v5, Labcd/mB;

    const-string v7, "MERGED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Labcd/mB;-><init>(Ljava/lang/String;I)V

    sput-object v5, Labcd/pB$a;->Hw:Labcd/pB$a;

    new-instance v7, Labcd/nB;

    const-string v9, "CONFLICTING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Labcd/nB;-><init>(Ljava/lang/String;I)V

    sput-object v7, Labcd/pB$a;->v5:Labcd/pB$a;

    new-instance v9, Labcd/oB;

    const-string v11, "NOT_SUPPORTED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Labcd/oB;-><init>(Ljava/lang/String;I)V

    sput-object v9, Labcd/pB$a;->Zo:Labcd/pB$a;

    const/4 v11, 0x6

    new-array v11, v11, [Labcd/pB$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Labcd/pB$a;->VH:[Labcd/pB$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILabcd/pB$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/pB$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/pB$a;
    .registers 2

    const-class v0, Labcd/pB$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Labcd/pB$a;

    return-object p0
.end method

.method public static values()[Labcd/pB$a;
    .registers 4

    sget-object v0, Labcd/pB$a;->VH:[Labcd/pB$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/pB$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract Hw()Z
.end method
