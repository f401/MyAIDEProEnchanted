.class Lcom/sun/tools/javac/main/Main$2;
.super Lcom/sun/tools/javac/util/JavacMessages;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/main/Main;->useRawMessages(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 188
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/util/JavacMessages;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 191
    return-object p1
.end method
