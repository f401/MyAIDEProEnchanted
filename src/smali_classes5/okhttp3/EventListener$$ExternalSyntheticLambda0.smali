.class public final synthetic Lokhttp3/EventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/EventListener$Factory;


# instance fields
.field public final f$0:Lokhttp3/EventListener;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/EventListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/EventListener$$ExternalSyntheticLambda0;->f$0:Lokhttp3/EventListener;

    return-void
.end method


# virtual methods
.method public final create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .registers 3

    iget-object v0, p0, Lokhttp3/EventListener$$ExternalSyntheticLambda0;->f$0:Lokhttp3/EventListener;

    invoke-static {v0, p1}, Lokhttp3/EventListener;->lambda$factory$0(Lokhttp3/EventListener;Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object v0

    return-object v0
.end method
