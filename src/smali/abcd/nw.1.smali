.class final Labcd/nw;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/jw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ow;->DW(Ljava/lang/ClassLoader;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final DW:Ljava/util/List;

.field final j6:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Labcd/nw;->j6:Ljava/lang/ClassLoader;

    iput-object p2, p0, Labcd/nw;->DW:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()V
    .registers 3

    iget-object v0, p0, Labcd/nw;->j6:Ljava/lang/ClassLoader;

    iget-object v1, p0, Labcd/nw;->DW:Ljava/util/List;

    invoke-static {v0, v1}, Labcd/ow;->j6(Ljava/lang/ClassLoader;Ljava/util/List;)V

    return-void
.end method
