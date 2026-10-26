.class public final enum Labcd/ME$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/ME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/ME$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/ME$a;

.field public static final enum FH:Labcd/ME$a;

.field public static final enum Hw:Labcd/ME$a;

.field private static final Zo:[Labcd/ME$a;

.field public static final enum j6:Labcd/ME$a;

.field public static final enum v5:Labcd/ME$a;


# instance fields
.field private final VH:Z

.field private final gn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Labcd/ME$a;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v6, v7, v6}, Labcd/ME$a;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Labcd/ME$a;->j6:Labcd/ME$a;

    new-instance v1, Labcd/ME$a;

    const-string v2, "LOOSE"

    invoke-direct {v1, v2, v7, v7, v6}, Labcd/ME$a;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Labcd/ME$a;->DW:Labcd/ME$a;

    new-instance v2, Labcd/ME$a;

    const-string v3, "PACKED"

    invoke-direct {v2, v3, v8, v6, v7}, Labcd/ME$a;-><init>(Ljava/lang/String;IZZ)V

    sput-object v2, Labcd/ME$a;->FH:Labcd/ME$a;

    new-instance v3, Labcd/ME$a;

    const-string v4, "LOOSE_PACKED"

    invoke-direct {v3, v4, v9, v7, v7}, Labcd/ME$a;-><init>(Ljava/lang/String;IZZ)V

    sput-object v3, Labcd/ME$a;->Hw:Labcd/ME$a;

    new-instance v4, Labcd/ME$a;

    const-string v5, "NETWORK"

    invoke-direct {v4, v5, v10, v6, v6}, Labcd/ME$a;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Labcd/ME$a;->v5:Labcd/ME$a;

    const/4 v5, 0x5

    new-array v5, v5, [Labcd/ME$a;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    aput-object v4, v5, v10

    sput-object v5, Labcd/ME$a;->Zo:[Labcd/ME$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Labcd/ME$a;->VH:Z

    iput-boolean p4, p0, Labcd/ME$a;->gn:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/ME$a;
    .locals 1

    const-class v0, Labcd/ME$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/ME$a;

    return-object v0
.end method

.method public static values()[Labcd/ME$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Labcd/ME$a;->Zo:[Labcd/ME$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/ME$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public Hw()Z
    .locals 1

    iget-boolean v0, p0, Labcd/ME$a;->VH:Z

    return v0
.end method

.method public Zo()Z
    .locals 1

    iget-boolean v0, p0, Labcd/ME$a;->gn:Z

    return v0
.end method
