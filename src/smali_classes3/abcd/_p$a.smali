.class public Labcd/_p$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/_p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final DW:I

.field private final j6:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/_p$a;->j6:I

    iput p2, p0, Labcd/_p$a;->DW:I

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/_p$a;->j6:I

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/_p$a;->DW:I

    return v0
.end method
