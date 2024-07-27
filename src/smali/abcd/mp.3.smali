.class public abstract Labcd/mp;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/lu;


# instance fields
.field private final j6:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/mp;->j6:I

    return-void
.end method


# virtual methods
.method public final Hw()I
    .registers 2

    iget v0, p0, Labcd/mp;->j6:I

    return v0
.end method

.method public abstract j6(Labcd/jp;Labcd/Lt;II)I
.end method
