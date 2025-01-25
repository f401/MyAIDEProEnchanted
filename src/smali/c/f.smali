.class public final Lc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc/f;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final b(Lc/e;)V
    .registers 3

    iget-object v0, p0, Lc/f;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(I)Lc/e;
    .registers 3

    iget-object v0, p0, Lc/f;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e;

    return-object p1
.end method

.method public final d()I
    .registers 2

    iget-object v0, p0, Lc/f;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
