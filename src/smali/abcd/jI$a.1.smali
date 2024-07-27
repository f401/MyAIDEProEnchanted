.class public Labcd/jI$a;
.super Labcd/jI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/jI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private FH:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/jI;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 3

    iget-object v0, p0, Labcd/jI$a;->FH:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/jI$a;->FH:[C

    :cond_0
    return-void
.end method

.method public FH()[C
    .registers 2

    iget-object v0, p0, Labcd/jI$a;->FH:[C

    return-object v0
.end method

.method public j6([C)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Labcd/jI$a;->DW()V

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/jI$a;->FH:[C

    iget-object v0, p0, Labcd/jI$a;->FH:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method
