.class public final Lcom/google/firebase/iid/n;
.super Ljava/lang/Exception;


# instance fields
.field private final j6:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/firebase/iid/n;->j6:I

    return-void
.end method


# virtual methods
.method public final j6()I
    .registers 2

    iget v0, p0, Lcom/google/firebase/iid/n;->j6:I

    return v0
.end method
