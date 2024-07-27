.class public Labcd/io$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/io;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final DW:Labcd/hs;

.field private final j6:I


# direct methods
.method public constructor <init>(ILabcd/hs;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Labcd/io$a;->j6:I

    iput-object p2, p0, Labcd/io$a;->DW:Labcd/hs;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "position == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW()Labcd/hs;
    .registers 2

    iget-object v0, p0, Labcd/io$a;->DW:Labcd/hs;

    return-object v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/io$a;->j6:I

    return v0
.end method
