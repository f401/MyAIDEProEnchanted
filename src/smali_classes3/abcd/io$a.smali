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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_14

    if-eqz p2, :cond_c

    iput p1, p0, Labcd/io$a;->j6:I

    iput-object p2, p0, Labcd/io$a;->DW:Labcd/hs;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "position == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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
