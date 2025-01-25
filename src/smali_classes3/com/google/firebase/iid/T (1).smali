.class final Lcom/google/firebase/iid/T;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Sx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LSx<",
        "Landroid/os/Bundle;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/firebase/iid/P;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/P;)V
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/iid/T;->j6:Lcom/google/firebase/iid/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Labcd/Yx;)Ljava/lang/Object;
    .registers 3

    const-class v0, Ljava/io/IOException;

    invoke-virtual {p1, v0}, Labcd/Yx;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/firebase/iid/T;->j6:Lcom/google/firebase/iid/P;

    invoke-static {v0, p1}, Lcom/google/firebase/iid/P;->j6(Lcom/google/firebase/iid/P;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
