.class public abstract Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.super Ljava/lang/Object;
.source "BaseAttribute.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/iface/Attribute;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 39
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;->name:Ljava/lang/String;

    return-void

    .line 36
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;->name:Ljava/lang/String;

    return-object v0
.end method
