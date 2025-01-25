.class abstract Lcom/google/firebase/components/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/c;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/firebase/components/c;->DW(Ljava/lang/Class;)Labcd/By;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    invoke-interface {p1}, Labcd/By;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
