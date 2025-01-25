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
        "Ljava/lang/Enum<",
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
    .registers 11

    new-instance v0, Labcd/ME$a;

    const-string v1, "NEW"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Labcd/ME$a;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Labcd/ME$a;->j6:Labcd/ME$a;

    new-instance v1, Labcd/ME$a;

    const-string v4, "LOOSE"

    invoke-direct {v1, v4, v3, v3, v2}, Labcd/ME$a;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Labcd/ME$a;->DW:Labcd/ME$a;

    new-instance v4, Labcd/ME$a;

    const-string v5, "PACKED"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2, v3}, Labcd/ME$a;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Labcd/ME$a;->FH:Labcd/ME$a;

    new-instance v5, Labcd/ME$a;

    const-string v7, "LOOSE_PACKED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v3, v3}, Labcd/ME$a;-><init>(Ljava/lang/String;IZZ)V

    sput-object v5, Labcd/ME$a;->Hw:Labcd/ME$a;

    new-instance v7, Labcd/ME$a;

    const-string v9, "NETWORK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2, v2}, Labcd/ME$a;-><init>(Ljava/lang/String;IZZ)V

    sput-object v7, Labcd/ME$a;->v5:Labcd/ME$a;

    const/4 v9, 0x5

    new-array v9, v9, [Labcd/ME$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Labcd/ME$a;->Zo:[Labcd/ME$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Labcd/ME$a;->VH:Z

    iput-boolean p4, p0, Labcd/ME$a;->gn:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/ME$a;
    .registers 2

    const-class v0, Labcd/ME$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Labcd/ME$a;

    return-object p0
.end method

.method public static values()[Labcd/ME$a;
    .registers 4

    sget-object v0, Labcd/ME$a;->Zo:[Labcd/ME$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/ME$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public Hw()Z
    .registers 2

    iget-boolean v0, p0, Labcd/ME$a;->VH:Z

    return v0
.end method

.method public Zo()Z
    .registers 2

    iget-boolean v0, p0, Labcd/ME$a;->gn:Z

    return v0
.end method
