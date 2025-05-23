.class public Lcom/jcraft/jsch/JSch;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Lcom/jcraft/jsch/Logger;

.field static FH:Lcom/jcraft/jsch/Logger;

.field static j6:Ljava/util/Hashtable;


# instance fields
.field private Hw:Ljava/util/Vector;

.field private VH:Lcom/jcraft/jsch/ConfigRepository;

.field private Zo:Lcom/jcraft/jsch/IdentityRepository;

.field private gn:Lcom/jcraft/jsch/HostKeyRepository;

.field private v5:Lcom/jcraft/jsch/IdentityRepository;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "kex"

    const-string v2, "diffie-hellman-group1-sha1,diffie-hellman-group14-sha1,diffie-hellman-group-exchange-sha1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "server_host_key"

    const-string v2, "ssh-rsa,ssh-dss"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "cipher.s2c"

    const-string v2, "aes128-ctr,aes128-cbc,3des-ctr,3des-cbc,blowfish-cbc,aes192-cbc,aes256-cbc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "cipher.c2s"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "mac.s2c"

    const-string v2, "hmac-md5,hmac-sha1,hmac-sha2-256,hmac-sha1-96,hmac-md5-96"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "mac.c2s"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "compression.s2c"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "compression.c2s"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "lang.s2c"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "lang.c2s"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "compression_level"

    const-string v3, "6"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group-exchange-sha1"

    const-string v4, "com.jcraft.jsch.DHGEX"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group1-sha1"

    const-string v4, "com.jcraft.jsch.DHG1"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "com.jcraft.jsch.DHG14"

    const-string v4, "diffie-hellman-group14-sha1"

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group-exchange-sha256"

    const-string v5, "com.jcraft.jsch.DHGEX256"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "dh"

    const-string v5, "com.jcraft.jsch.jce.DH"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "3des-cbc"

    const-string v5, "com.jcraft.jsch.jce.TripleDESCBC"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "blowfish-cbc"

    const-string v5, "com.jcraft.jsch.jce.BlowfishCBC"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "hmac-sha1"

    const-string v5, "com.jcraft.jsch.jce.HMACSHA1"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "hmac-sha1-96"

    const-string v5, "com.jcraft.jsch.jce.HMACSHA196"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "hmac-sha2-256"

    const-string v5, "com.jcraft.jsch.jce.HMACSHA256"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "hmac-md5"

    const-string v5, "com.jcraft.jsch.jce.HMACMD5"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "hmac-md5-96"

    const-string v5, "com.jcraft.jsch.jce.HMACMD596"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "sha-1"

    const-string v5, "com.jcraft.jsch.jce.SHA1"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "sha-256"

    const-string v5, "com.jcraft.jsch.jce.SHA256"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "md5"

    const-string v5, "com.jcraft.jsch.jce.MD5"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "signature.dss"

    const-string v5, "com.jcraft.jsch.jce.SignatureDSA"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "signature.rsa"

    const-string v5, "com.jcraft.jsch.jce.SignatureRSA"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "keypairgen.dsa"

    const-string v5, "com.jcraft.jsch.jce.KeyPairGenDSA"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "keypairgen.rsa"

    const-string v5, "com.jcraft.jsch.jce.KeyPairGenRSA"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "random"

    const-string v5, "com.jcraft.jsch.jce.Random"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "com.jcraft.jsch.CipherNone"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "aes128-cbc"

    const-string v2, "com.jcraft.jsch.jce.AES128CBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "aes192-cbc"

    const-string v2, "com.jcraft.jsch.jce.AES192CBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "aes256-cbc"

    const-string v2, "com.jcraft.jsch.jce.AES256CBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "aes128-ctr"

    const-string v2, "com.jcraft.jsch.jce.AES128CTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "aes192-ctr"

    const-string v2, "com.jcraft.jsch.jce.AES192CTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "aes256-ctr"

    const-string v2, "com.jcraft.jsch.jce.AES256CTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "3des-ctr"

    const-string v2, "com.jcraft.jsch.jce.TripleDESCTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "arcfour"

    const-string v2, "com.jcraft.jsch.jce.ARCFOUR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "arcfour128"

    const-string v2, "com.jcraft.jsch.jce.ARCFOUR128"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "arcfour256"

    const-string v2, "com.jcraft.jsch.jce.ARCFOUR256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "userauth.none"

    const-string v2, "com.jcraft.jsch.UserAuthNone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "userauth.password"

    const-string v2, "com.jcraft.jsch.UserAuthPassword"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "userauth.keyboard-interactive"

    const-string v2, "com.jcraft.jsch.UserAuthKeyboardInteractive"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "userauth.publickey"

    const-string v2, "com.jcraft.jsch.UserAuthPublicKey"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "userauth.gssapi-with-mic"

    const-string v2, "com.jcraft.jsch.UserAuthGSSAPIWithMIC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "gssapi-with-mic.krb5"

    const-string v2, "com.jcraft.jsch.jgss.GSSContextKrb5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "zlib"

    const-string v2, "com.jcraft.jsch.jcraft.Compression"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "zlib@openssh.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "pbkdf"

    const-string v2, "com.jcraft.jsch.jce.PBKDF"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "StrictHostKeyChecking"

    const-string v2, "ask"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "HashKnownHosts"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "PreferredAuthentications"

    const-string v5, "gssapi-with-mic,publickey,keyboard-interactive,password"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "CheckCiphers"

    const-string v5, "aes256-ctr,aes192-ctr,aes128-ctr,aes256-cbc,aes192-cbc,aes128-cbc,3des-ctr,arcfour,arcfour128,arcfour256"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "CheckKexes"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "MaxAuthTries"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    const-string v1, "ClearAllForwardings"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/jcraft/jsch/JSch$1;

    invoke-direct {v0}, Lcom/jcraft/jsch/JSch$1;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/JSch;->DW:Lcom/jcraft/jsch/Logger;

    sput-object v0, Lcom/jcraft/jsch/JSch;->FH:Lcom/jcraft/jsch/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->Hw:Ljava/util/Vector;

    new-instance v0, Lcom/jcraft/jsch/LocalIdentityRepository;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/LocalIdentityRepository;-><init>(Lcom/jcraft/jsch/JSch;)V

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->v5:Lcom/jcraft/jsch/IdentityRepository;

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->Zo:Lcom/jcraft/jsch/IdentityRepository;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->VH:Lcom/jcraft/jsch/ConfigRepository;

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->gn:Lcom/jcraft/jsch/HostKeyRepository;

    return-void
.end method

.method public static DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/jcraft/jsch/JSch;->j6:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method static v5()Lcom/jcraft/jsch/Logger;
    .registers 1

    sget-object v0, Lcom/jcraft/jsch/JSch;->FH:Lcom/jcraft/jsch/Logger;

    return-object v0
.end method


# virtual methods
.method public DW()Lcom/jcraft/jsch/HostKeyRepository;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->gn:Lcom/jcraft/jsch/HostKeyRepository;

    if-nez v0, :cond_b

    new-instance v0, Lcom/jcraft/jsch/KnownHosts;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->gn:Lcom/jcraft/jsch/HostKeyRepository;

    :cond_b
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->gn:Lcom/jcraft/jsch/HostKeyRepository;

    return-object v0
.end method

.method protected DW(Lcom/jcraft/jsch/Session;)Z
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->Hw:Ljava/util/Vector;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/jcraft/jsch/JSch;->Hw:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public FH()Ljava/util/Vector;
    .registers 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/jcraft/jsch/JSch;->Zo:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v1}, Lcom/jcraft/jsch/IdentityRepository;->j6()Ljava/util/Vector;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_13

    return-object v0

    :cond_13
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Identity;

    invoke-interface {v3}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method public Hw()Lcom/jcraft/jsch/IdentityRepository;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->Zo:Lcom/jcraft/jsch/IdentityRepository;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6()Lcom/jcraft/jsch/ConfigRepository;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->VH:Lcom/jcraft/jsch/ConfigRepository;

    return-object v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;
    .registers 5

    if-eqz p2, :cond_8

    new-instance v0, Lcom/jcraft/jsch/Session;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jcraft/jsch/Session;-><init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_8
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "host must not be null."

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Lcom/jcraft/jsch/HostKeyRepository;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/JSch;->gn:Lcom/jcraft/jsch/HostKeyRepository;

    return-void
.end method

.method public j6(Lcom/jcraft/jsch/Identity;[B)V
    .registers 6

    if-eqz p2, :cond_19

    :try_start_2
    array-length v0, p2

    new-array v0, v0, [B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_14

    :try_start_a
    invoke-interface {p1, v0}, Lcom/jcraft/jsch/Identity;->j6([B)Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_11

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->DW([B)V

    goto :goto_19

    :catchall_11
    move-exception p1

    move-object p2, v0

    goto :goto_15

    :catchall_14
    move-exception p1

    :goto_15
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->DW([B)V

    throw p1

    :cond_19
    :goto_19
    iget-object p2, p0, Lcom/jcraft/jsch/JSch;->Zo:Lcom/jcraft/jsch/IdentityRepository;

    instance-of v0, p2, Lcom/jcraft/jsch/LocalIdentityRepository;

    if-eqz v0, :cond_25

    check-cast p2, Lcom/jcraft/jsch/LocalIdentityRepository;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/LocalIdentityRepository;->j6(Lcom/jcraft/jsch/Identity;)V

    goto :goto_56

    :cond_25
    instance-of p2, p1, Lcom/jcraft/jsch/IdentityFile;

    if-eqz p2, :cond_3f

    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->DW()Z

    move-result p2

    if-nez p2, :cond_3f

    iget-object p2, p0, Lcom/jcraft/jsch/JSch;->Zo:Lcom/jcraft/jsch/IdentityRepository;

    check-cast p1, Lcom/jcraft/jsch/IdentityFile;

    invoke-virtual {p1}, Lcom/jcraft/jsch/IdentityFile;->Hw()Lcom/jcraft/jsch/KeyPair;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyPair;->DW()[B

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/jcraft/jsch/IdentityRepository;->j6([B)Z

    goto :goto_56

    :cond_3f
    monitor-enter p0

    :try_start_40
    iget-object p2, p0, Lcom/jcraft/jsch/JSch;->Zo:Lcom/jcraft/jsch/IdentityRepository;

    instance-of v0, p2, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    if-nez v0, :cond_4e

    new-instance v0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    invoke-direct {v0, p2}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;-><init>(Lcom/jcraft/jsch/IdentityRepository;)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/JSch;->j6(Lcom/jcraft/jsch/IdentityRepository;)V

    :cond_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_57

    iget-object p2, p0, Lcom/jcraft/jsch/JSch;->Zo:Lcom/jcraft/jsch/IdentityRepository;

    check-cast p2, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->j6(Lcom/jcraft/jsch/Identity;)V

    :goto_56
    return-void

    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p1
.end method

.method public j6(Lcom/jcraft/jsch/IdentityRepository;)V
    .registers 2

    monitor-enter p0

    if-nez p1, :cond_5

    :try_start_3
    iget-object p1, p0, Lcom/jcraft/jsch/JSch;->v5:Lcom/jcraft/jsch/IdentityRepository;

    :cond_5
    iput-object p1, p0, Lcom/jcraft/jsch/JSch;->Zo:Lcom/jcraft/jsch/IdentityRepository;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected j6(Lcom/jcraft/jsch/Session;)V
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->Hw:Ljava/util/Vector;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/jcraft/jsch/JSch;->Hw:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public j6(Ljava/io/InputStream;)V
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->gn:Lcom/jcraft/jsch/HostKeyRepository;

    if-nez v0, :cond_b

    new-instance v0, Lcom/jcraft/jsch/KnownHosts;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->gn:Lcom/jcraft/jsch/HostKeyRepository;

    :cond_b
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->gn:Lcom/jcraft/jsch/HostKeyRepository;

    instance-of v1, v0, Lcom/jcraft/jsch/KnownHosts;

    if-eqz v1, :cond_1e

    monitor-enter v0

    :try_start_12
    iget-object v1, p0, Lcom/jcraft/jsch/JSch;->gn:Lcom/jcraft/jsch/HostKeyRepository;

    check-cast v1, Lcom/jcraft/jsch/KnownHosts;

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/KnownHosts;->j6(Ljava/io/InputStream;)V

    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    throw p1

    :cond_1e
    :goto_1e
    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/JSch;->j6(Ljava/lang/String;[B)V

    return-void
.end method

.method public j6(Ljava/lang/String;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/jcraft/jsch/IdentityFile;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/JSch;->j6(Lcom/jcraft/jsch/Identity;[B)V

    return-void
.end method
