.class public final Lcom/bumptech/glide/RequestManager$GenericModelRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GenericModelRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final modelLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field final this$0:Lcom/bumptech/glide/RequestManager;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->modelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    iput-object p3, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->dataClass:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$600(Lcom/bumptech/glide/RequestManager$GenericModelRequest;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->modelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bumptech/glide/RequestManager$GenericModelRequest;)Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->dataClass:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public from(Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TA;>;)",
            "Lcom/bumptech/glide/RequestManager$GenericModelRequest",
            "<TA;TT;>.GenericTypeRequest;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;-><init>(Lcom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Class;)V

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/RequestManager$GenericModelRequest",
            "<TA;TT;>.GenericTypeRequest;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;-><init>(Lcom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Object;)V

    return-object v0
.end method
