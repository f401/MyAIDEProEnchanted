.class public final Labcd/Dw$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final DW:Lorg/apache/http/HttpResponse;

.field public final j6:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method protected constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Dw$f;->j6:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p2, p0, Labcd/Dw$f;->DW:Lorg/apache/http/HttpResponse;

    return-void
.end method
