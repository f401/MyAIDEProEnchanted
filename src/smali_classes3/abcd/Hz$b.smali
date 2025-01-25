.class public interface abstract Labcd/Hz$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final j6:Labcd/Hz$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/Iz;

    invoke-direct {v0}, Labcd/Iz;-><init>()V

    sput-object v0, Labcd/Hz$b;->j6:Labcd/Hz$b;

    return-void
.end method


# virtual methods
.method public abstract j6(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end method

.method public abstract j6(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
.end method
